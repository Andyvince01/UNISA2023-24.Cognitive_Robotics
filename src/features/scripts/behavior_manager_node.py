#!/usr/bin/python3
import rospy

from optparse import OptionParser
from service_handler import ServiceHandler
from std_msgs.msg import String
from threading import Lock, Thread
from vision_msgs.msg import Detection2DArray

from chatbot.srv import Dialogue
from features.srv import *

class BehaviorManagerNode():
    '''
    A ROS (Robot Operating System) node for managing various behavioral aspects of a robot, 
    particularly focusing on handling human interactions through face and voice detection, 
    and responding appropriately using dialogue and animations.

    This node integrates multiple services such as speech-to-text, text-to-speech, dialogue processing, 
    animation, and tablet display management. It also listens for face and people detection to maintain 
    an interactive engagement with users.

    Attributes:
        _pepper_on (bool): Indicates if the robot (Pepper) is active.
        _services (ServiceHandler): Manages ROS services for various features.
        _people_lock (Lock): Thread lock for synchronizing access to person presence data.
        _person_presence (bool): Tracks the presence of a person.
        _face_presence (bool): Tracks the presence of a face.
        _last_face_presence (bool): Stores the state of face presence in the previous check.
        _time_face_presence (float): Timestamp of the last face presence.

    Methods:
        __init__(self, pepper_on): Initializes the node and services based on the robot's operational status.
        __call__(self): Main loop handling the behavioral logic based on sensor inputs and service responses.
        __check_face_presence(self): Checks and manages the state related to face presence.
        __handle_animation(self, text): Handles animation based on the text context.
        __handle_animation_in_thread(self, text): Manages animation in a separate thread.
        __handle_person_detection(self, msg): Callback for person detection updates.
        __handle_face_detection(self, msg): Callback for face detection updates.
        __hadle_voice_detection(self): Manages voice detection service calls.
        __handle_chatbot(self, text): Processes dialogue through the chatbot service.
        __handle_s2t(self, audio): Converts speech to text.
        __handle_t2s(self, text): Converts text to speech.
        __handle_tablet(self, text): Displays text on the robot's tablet.
        __handle_shutdown(self): Handles the shutdown of the node and services.
    '''
    
    def __init__(self, pepper_on : bool):
        '''
        Initializes the BehaviorManagerNode, setting up necessary services and subscribers 
        based on whether the Pepper robot is operational. It also initializes locks and state 
        variables for managing human interaction.

        Args:
            pepper_on (bool): Indicates if the Pepper robot is active and should initialize additional services.
        '''
        self._pepper_on = pepper_on
        self._services = ServiceHandler()
        self._people_lock = Lock()
        self._person_presence = False
        self._face_presence = False
        self._last_face_presence = False
        self._time_face_presence = 0
        
        # Init Ros Node
        rospy.init_node('behavior_manager')
        rospy.Subscriber("/people_detection", Detection2DArray, self.__handle_person_detection)
        rospy.Subscriber("/face_detection", Detection2DArray, self.__handle_face_detection)
        rospy.on_shutdown(self.__handle_shutdown)
        
        # Init Services
        self._services._init_service('asr_service', ASRService, persistent=True)
        self._services._init_service('dialogue_server', Dialogue, persistent=True)
        self._services._init_service('voice_detection_service', VoiceDetectionService, persistent=True)
        if self._pepper_on:
            self._services._init_service('animation_service', AnimationService, persistent=True)
            self._services._init_service('tablet_service', TabletService, persistent=True)
            self._services._init_service('t2s_service', Text2Speech, persistent=True)
        
    def __call__(self):
        '''
        The main execution loop of the node. It regularly checks for the presence of people and faces, 
        handling interactions through voice and chatbot services. Manages the robot's responses using 
        animations, speech, and tablet display based on the context of the interaction.

        This method continually monitors and reacts to human presence, voice inputs, and dialogue interactions, 
        ensuring an engaging and responsive behavior from the robot.
        '''
        rospy.loginfo("Behavior Manager Ready!")
        rate = rospy.Rate(10)
        
        while not rospy.is_shutdown():
            
            rate.sleep()

            # with self._people_lock:
            #     if self._person_presence is False and (int(rospy.get_time() - self._time_face_presence) > 5):
            #         continue
            #     if self._person_presence is True and self._face_presence is False and (int(rospy.get_time() - self._time_face_presence) > 5):
            #         rospy.logwarn("I can't see your face.")
            #         continue
            # rospy.loginfo("Face_Presence")
            # rospy.loginfo(self._face_presence)
            # rospy.loginfo("Last_Face_Presence")
            # rospy.loginfo(self._last_face_presence)
            
            if not self.__check_face_presence():
                continue

            if self._face_presence is True and self._last_face_presence is False and self._pepper_on is True:
                self.__handle_animation_in_thread("animation_greet")
                self.__handle_t2s("Hello there!")

            if not self.__check_face_presence(): 
                continue
            audio = self.__hadle_voice_detection()
            if audio.data == (0, 0):
                continue

            if not self.__check_face_presence():
                continue
            text = self.__handle_s2t(audio)

            if not self.__check_face_presence():
                continue
            answer = self.__handle_chatbot(text)
            rospy.loginfo("***************Answer: %s", answer)
            
            if self._pepper_on:
                self.__handle_tablet(answer)
                if answer is not None and answer != "":
                    self.__handle_animation_in_thread(answer)
                    self.__handle_t2s(answer)
            
    # Private Methods  
    def __check_face_presence(self):
        '''
        Checks if a face is currently present in the robot's field of view. This method uses a lock to synchronize 
        access to the face presence variables. It also handles the scenario when a face has not been detected 
        for a certain duration, triggering a reset in the chatbot interaction.

        Returns:
            bool: True if a face is present, False otherwise.
        '''
        with self._people_lock:
            current_time = rospy.get_time()
            # rospy.loginfo(int(current_time - self._time_face_presence))
            if self._person_presence is False:
                self.__handle_chatbot("/restart")
                return False
            elif self._face_presence is False and (int(current_time - self._time_face_presence) > 5):
                self.__handle_chatbot("/restart")
                rospy.logwarn(f"Face not detected for more than {int(current_time - self._time_face_presence)} seconds. Interrupting current operation.")
                return False
            return True
    
    def __handle_animation(self, text):
        '''
        Handles the selection and execution of an animation based on the given text. Chooses different animations 
        like greeting, explaining, calming, or thinking based on the content of the text.

        Args:
            text (str): The text based on which the animation is selected.
        '''
        if text == "animation_greet" or "Pepper" in text:
            self._services('animation_service', String("animation_greet"))
        elif "Let me check in my database." in text:
            self._services('animation_service', String("animation_tablet"))
        elif "I'm sorry" in text:
            self._services('animation_service', String("animation_calm"))
        elif "What is" in text or "Does the person you are looking for have" in text:
            self._services('animation_service', String("animation_explain"))
        else:
            self._services('animation_service', String("animation_thinking"))    
    
    def __handle_animation_in_thread(self, text):
        '''
        Executes an animation in a separate thread. This allows the animation to be run without blocking 
        the main execution thread of the node.

        Args:
            text (str): The text based on which the animation is selected and executed.
        '''
        thread = Thread(target=self.__handle_animation, args=(text,))
        thread.start()
        
    def __handle_chatbot(self, text = "Hello there!"):
        '''
        Interacts with the chatbot service using the provided text. Sends the text to the chatbot service 
        and returns the response.

        Args:
            text (str, optional): The text to send to the chatbot. Defaults to "Hello there!".

        Returns:
            The response from the chatbot.
        '''
        response = self._services('dialogue_server', text)
        return response.answer
    
    def __handle_face_detection(self, msg): 
        '''
        Callback method for handling face detection data. Updates the face presence status and the last 
        recorded time of face presence.

        Args:
            msg (Detection2DArray): The message containing face detection data.
        '''
        self._last_face_presence = self._face_presence
        self._face_presence = True if len(msg.detections) > 0 else False
        if self._face_presence is True:
            self._time_face_presence =  rospy.get_time()
    
    def __handle_person_detection(self, msg): 
        '''
        Callback method for handling person detection data. Updates the person presence status based on 
        whether any detections are present in the message.

        Args:
            msg (Detection2DArray): The message containing person detection data.
        '''
        self._person_presence = True if len(msg.detections) > 0 else False
       
    def __handle_s2t(self, audio):
        '''
        Converts speech to text using the ASR (Automatic Speech Recognition) service. Takes audio data as input 
        and returns the converted text.

        Args:
            audio: The audio data to be converted to text.

        Returns:
            The text converted from the audio input.
        '''
        s2t = self._services('asr_service', audio)
        return s2t.output.data if s2t is not None else None

    def __handle_shutdown(self):
        '''
        Handles the shutdown process of the node. This method is called when the ROS node is shutting down. 
        It ensures that all services are properly closed before exiting.
        '''
        self._services._close_services()

    def __handle_t2s(self, text):
        '''
        Converts text to speech using the T2S (Text-to-Speech) service. Takes text as input and triggers 
        the speech synthesis process in the robot.

        Args:
            text (str): Chatbot's answer.
        '''
        self._services('t2s_service', String(text))

    def __handle_tablet(self, text):
        '''
        Updates the tablet screen according to chatbot's answer ('text').
        
        Args:
            text (str): Chatbot's answer.
        '''
        self._services('tablet_service', String(text))
    
    def __hadle_voice_detection(self):
        '''
        Handles the process of detecting voice. This method calls the voice detection service and returns 
        the detected audio data.

        Returns:
            The output of the voice detection service, typically audio data.
        '''
        audio_data = self._services('voice_detection_service')
        return audio_data.output

if __name__ == '__main__':
    parser = OptionParser()
    parser.add_option("--pepper_on", dest="pepper_on", default="True")
    (options, args) = parser.parse_args()

    pepper_on=(options.pepper_on.lower() == "true")
    behavior_manager_node = BehaviorManagerNode(pepper_on=pepper_on)
    behavior_manager_node()