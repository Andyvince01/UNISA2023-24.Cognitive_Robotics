#!/usr/bin/python3
import cv2
import glob
import os

from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from std_msgs.msg import Bool

script_dir = os.path.dirname(os.path.abspath(__file__))
PEOPLE_PROTO = os.path.join(script_dir, "../scripts/Detector/PeopleDetectorModels/MobileNet", "MobileNetSSD_deploy.prototxt")
PEOPLE_MODEL = os.path.join(script_dir, "../scripts/Detector/PeopleDetectorModels/MobileNet", "MobileNetSSD_deploy.caffemodel")
POEPLE_SCORE_THREHSOLD = 0.5

VIDEOS_PATH = os.path.join(script_dir, "TestSet/V*")
DIR_LIST = [path for path in glob.glob(os.path.join(VIDEOS_PATH,"**"), recursive=True) if os.path.isdir(path)]
# VIDEOS_LIST = [path for path in os.listdir(VIDEOS_PATH) if path.endswith(".mp4")]
FRAMES_LIST = [path for dir_video in DIR_LIST for path in glob.glob(os.path.join(dir_video,"**"), recursive=True) if os.path.isfile(path)]
FRAMES_LIST = sorted(FRAMES_LIST)
print(DIR_LIST)

class PeopleDetectorTest():
   """
   Class for detecting faces in images using the pre-trained FaceNet model.

   Attributes:
   - _br: CvBridge object for converting image messages to OpenCV format.
   - _faceNet: FaceNet model loaded from pre-trained weights.
   - _publisher: ROS publisher for sending face detection results.
   - _image_lock: Thread lock for safe access to image data.

   Methods:
   - __init__(self): Initializes the FaceDetector class, loads the model, and sets up ROS publisher.
   - __call__(self): Initiates the ROS node, subscribes to the video input, and starts the face detection process.
   - __handle_detector(self, msg): Callback function for processing image messages and detecting faces.
   """
   
   def __init__(self) -> None: 
      """
      Initializes the FaceDetector class.

      Loads the FaceNet model, sets up a ROS publisher, and initializes the image lock.
      """
      self._br = CvBridge()
      self._model = cv2.dnn.readNet(PEOPLE_PROTO, PEOPLE_MODEL)
      self._predictions = []
      self._ground_truths = []
      
      for dir_video in DIR_LIST:
         dir_video = dir_video.split("/")[:-1]
         dir_video[-1] += "_annotations.txt"
         dir_video = "/".join(dir_video)
         with open(dir_video, "r") as f:
            lines = f.readlines()
            for line in lines:
               line = line.strip()
               self._ground_truths.append(line.split(",")[1] == "True")
   
   def __call__(self) -> None:
      """
      Initiates the ROS node, subscribes to the video input, and starts the face detection process.

      Uses the FaceNet model to detect faces in the incoming image messages.
      """
      for frame in FRAMES_LIST:
         img = cv2.imread(os.path.join(frame))
         self.__handle_detector(img)
      
      print(self._predictions)
      
      precision, recall, f1_score = self.__calculate_metrics()
      print(f"Precision = {precision} | Recall = {recall} | f1_score = {f1_score}")

   def __handle_detector(self, msg) -> Bool:
      """
      Callback function for processing image messages and detecting faces.

      Args:
      - msg: Incoming image message.
      
      Returns:
      - Bool: True if face is detected. Otherwise, False.

      Processes the image, performs face detection, and publishes the detection results.
      """
      frame = msg
      image = frame.copy() if frame is not None else None

      blob = cv2.dnn.blobFromImage(image, 0.007843, (300, 300), 127.5)

      self._model.setInput(blob)
      detections = self._model.forward()
               
      person_detected = False         
      
      for i in range(detections.shape[2]):
         score = detections[0, 0, i, 2]
         if score > POEPLE_SCORE_THREHSOLD and int(detections[0, 0, i, 1]) == 15:
            person_detected = True
            break
         
      self._predictions.append(person_detected)
            
   def __calculate_metrics(self,):
      true_positives = 0
      false_positives = 0
      false_negatives = 0

      for pred, gt in zip(self._predictions, self._ground_truths):
         if pred == gt == True:
            true_positives += 1
         elif pred == True and gt == False: 
            false_positives += 1
         elif pred == False and gt == True:
            false_negatives += 1

      precision = true_positives / (true_positives + false_positives) if (true_positives + false_positives) > 0 else 0
      recall = true_positives / (true_positives + false_negatives) if (true_positives + false_negatives) > 0 else 0
      f1_score = 2 * (precision * recall) / (precision + recall) if (precision + recall) > 0 else 0

      return precision, recall, f1_score
   
class Utils:
   
   @staticmethod
   def create_annotation():
      for dir_video in DIR_LIST:
         dir_video = dir_video.split("/")[:-1]
         dir_video[-1] += "_annotations.txt"
         dir_video = "/".join(dir_video)
         
         with open(dir_video, "w") as file:
            for video in FRAMES_LIST:
               if video.split("/")[-2] in dir_video:
                  file.write(video + ",False\n")

if __name__ == '__main__':
   people_detector_test = PeopleDetectorTest()
   people_detector_test()