#!/usr/bin/python3
from optparse import OptionParser

import numpy as np
import rospy
import speech_recognition as sr

from std_msgs.msg import Int16MultiArray
from features.srv import VoiceDetectionService, VoiceDetectionServiceResponse

class VoiceDetection:
    def __init__(self, device_index):
        # Initialize a Recognizer
        self._recognizer = sr.Recognizer()
        self._recognizer.dynamic_energy_threshold = False
        self._recognizer.energy_threshold = 150
        
        self._device_index = device_index
            
        # Initialize a Microphone
        self._microphone = sr.Microphone(device_index=device_index, sample_rate=16000, chunk_size=1024)

    def __call__(self):
        rospy.init_node('voice_detection', anonymous=True)
        rospy.Service('voice_detection_service', VoiceDetectionService, self.__handle_audio_recording, buff_size=1)
        rospy.loginfo("I'm listening...")
        rospy.loginfo(self._device_index)

        try:
            rospy.spin()
        except rospy.ROSInterruptException:
            rospy.loginfo("Voice Detection Node shutting down.")

    def __handle_audio_recording(self, msg):
        try:
            rospy.loginfo("Recording...")
            with self._microphone as source:
                # self._recognizer.adjust_for_ambient_noise(source, duration=1)
                audio = self._recognizer.listen(source, timeout=2)
                data = np.frombuffer(audio.get_raw_data(), dtype=np.int16)
                data_to_send = Int16MultiArray(data=data.tolist())
                return VoiceDetectionServiceResponse(data_to_send)
        except sr.WaitTimeoutError:
            # rospy.logwarn("Listening timed out. No speech detected in 5 seconds.")
            data_to_send = Int16MultiArray(data=[0, 0])
            return VoiceDetectionServiceResponse(data_to_send)
        except sr.UnknownValueError:
            rospy.logwarn("No speech detected.")
            data_to_send = Int16MultiArray(data=[0, 0])
            return VoiceDetectionServiceResponse(data_to_send)
        except sr.RequestError as e:
            rospy.logerr(f"Error during audio recording: {e}")
            data_to_send = Int16MultiArray(data=[0, 0])
            return VoiceDetectionServiceResponse(data_to_send)

if __name__ == "__main__":
    parser = OptionParser()
    parser.add_option("--mic_index", dest="mic_index", default="None")
    (options, args) = parser.parse_args()
    
    device_index = int(options.mic_index) if options.mic_index != "None" else None

    voice_detection = VoiceDetection(device_index)
    voice_detection()