#!/usr/bin/python3
import rospy

from optparse import OptionParser
from std_msgs.msg import String
from session import *

from features.srv import Text2Speech, Text2SpeechResponse

class Text2SpeechNode:
    '''
    This class implements a ROS node able to call the Text to speech service of the robot
    '''
    
    def __init__(self, ip, port):
        '''
        The costructor creates a session to Pepper and inizializes the services
        '''
        self._session = Session(ip, port)
        self._tts = self._session.get_service("ALTextToSpeech")

    def __call__(self):
        '''
        Starts the node and create the tts service
        '''
        rospy.init_node("text2speech_node")
        rospy.Service('t2s_service', Text2Speech, self.__say)
        try:
            rospy.spin()
        except rospy.ROSInterruptException:
            pass

    # Private Methods
    def __say(self, msg : Text2Speech) -> Text2SpeechResponse:
        '''
        Rececives a Text2Speech message and call the ALTextToSpeech service.
        The robot will play the text of the message
        '''
        try:
            self._tts.say(msg.input.data)
        except:
            self._session.reconnect()
            self._tts = self._session.get_service("ALTextToSpeech")
            self._tts.say(msg.input.data)
        return Text2SpeechResponse(String("ACK"))

if __name__ == "__main__":
    import time
    time.sleep(3)
    parser = OptionParser()
    parser.add_option("--ip", dest="ip", default="10.0.1.207")
    parser.add_option("--port", dest="port", default=9559)
    (options, args) = parser.parse_args()

    try:
        t2s_node = Text2SpeechNode(options.ip, int(options.port))
        t2s_node()
    except rospy.ROSInterruptException:
        pass