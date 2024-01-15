#!/usr/bin/python3
import numpy as np
from openai import OpenAI, OpenAIError
import rospy

from io import BytesIO
from speech_recognition import AudioData
from std_msgs.msg import String

from features.srv import ASRService, ASRServiceResponse

OPENAI_API_KEY = "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"

class WhisperAPISpeechRecognition:
    """
    Class for integrating the Whisper ASR (Automatic Speech Recognition) API with ROS (Robot Operating System).

    Attributes:
        - sample_rate (int): The sample rate of the audio data. The rate parameter represents the sampling rate of the audio stream. It determines the
        number of samples per second that are recorded or played back. Common sampling rates include 44100
        Hz (CD quality), 48000 Hz (DVD quality), and 16000 Hz (telephone quality)
        - sample_width (int): The sample width of the audio data in bytes.
        - lang (str): The language for transcription (default is 'en').
    
    Methods:
        - __init__(sample_rate, sample_width: Initializes the WhisperAPISpeechRecognition class.
        - __call__(): Subscribes to the 'mic_data' topic and handles speech-to-text transcription.
        - __handle_s2t(msg): Callback function for processing audio data, transcribing it, and publishing the results.

    Usage:
        Initialize an object of the WhisperAPISpeechRecognition class and call it to start speech recognition.
    """
    
    def __init__(self, sample_rate : int = 16000, sample_width : int = 2) -> None:
        """
        Initializes the WhisperAPISpeechRecognition class.

        Args:
            - sample_rate (int): The sample rate of the audio data.
            - sample_width (int): The sample width of the audio data in bytes.
            - lang (str): The language for transcription (default is 'en').
        """
        self._sample_rate = sample_rate
        self._sample_width = sample_width
        self._client = OpenAI(api_key=OPENAI_API_KEY)

    def __call__(self) -> None:
        """
        Subscribes to the 'mic_data' topic and handles speech-to-text transcription.
        """
        # ROS Node Initialization
        rospy.init_node('audio_speech_recognition', anonymous=True)
        rospy.Service('asr_service', ASRService, self.__handle_s2t, buff_size=1)
        try:
            rospy.spin()
        except KeyboardInterrupt:
            pass

    def __handle_s2t(self, msg : ASRService) -> ASRServiceResponse:
        """
        Callback function for processing audio data, transcribing it, and publishing the results.

        Args:
            - msg (Int16MultiArray): The audio data received from the microphone.
        """
        audio = AudioData(np.array(msg.input.data, dtype=np.int16).tobytes(), self._sample_rate, self._sample_width)

        # Transcribe
        try:
            wav_data = BytesIO(audio.get_wav_data())
            wav_data.name = "SpeechRecognition_audio.wav"
            
            transcript = self._client.audio.transcriptions.create(model="whisper-1", file=wav_data, language="en", response_format='text')
            
            if not transcript:
                # If the transcript is empty, handle it appropriately
                rospy.logwarn("Whisper returned an empty transcript.")
                return ASRServiceResponse(String(""))
            
            rospy.loginfo("***************Transcribed Text: %s", transcript)
            
            # Publish the results
            return ASRServiceResponse(String(transcript))

        except OpenAIError as e:
            # Handle OpenAI errors, e.g., due to API rate limits
            rospy.logerr(f"OpenAI API error: {e}")
            return ASRServiceResponse(String(""))

        except Exception as e:
            # Handle other exceptions
            rospy.logerr(f"Error during transcription: {e}")
            return ASRServiceResponse(String(""))

if __name__ == "__main__":
    whisper = WhisperAPISpeechRecognition()
    whisper()