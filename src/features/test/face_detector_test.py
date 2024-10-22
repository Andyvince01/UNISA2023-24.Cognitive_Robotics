#!/usr/bin/python3
import cv2
import glob
import os

from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from std_msgs.msg import Bool

script_dir = os.path.dirname(os.path.abspath(__file__))
FACE_PROTO = os.path.join(script_dir, "../scripts/Detector/FaceDetectorModels", "opencv_face_detector.pbtxt")
FACE_MODEL = os.path.join(script_dir, "../scripts/Detector/FaceDetectorModels", "opencv_face_detector_uint8.pb")
FACE_SCORE_TRESHOLD = 0.5

VIDEOS_PATH = os.path.join(script_dir, "TestSet/TestVideo*")
DIR_LIST = [path for path in glob.glob(os.path.join(VIDEOS_PATH,"**"), recursive=True) if os.path.isdir(path)]
FRAMES_LIST = [path for dir_video in DIR_LIST for path in glob.glob(os.path.join(dir_video,"**"), recursive=True) if os.path.isfile(path)]
FRAMES_LIST = sorted(FRAMES_LIST)
print(DIR_LIST)

class FaceDetectorTest():
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
      self._faceNet = cv2.dnn.readNet(FACE_PROTO, FACE_MODEL)
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
               self._ground_truths.append(line.split(",")[2] == "True")
   
   def __call__(self) -> None:
      """
      Initiates the ROS node, subscribes to the video input, and starts the face detection process.

      Uses the FaceNet model to detect faces in the incoming image messages.
      """
      for frame in FRAMES_LIST:
         img = cv2.imread(os.path.join(frame))
         self.__handle_detector(img)
      
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

      blob = cv2.dnn.blobFromImage(image, 1.0, (300, 300), [104, 117, 123], swapRB=True, crop=False)

      self._faceNet.setInput(blob)
      detections = self._faceNet.forward()
               
      face_detection = False      
         
      for i in range(detections.shape[2]):
         score = detections[0, 0, i, 2]
         if score > FACE_SCORE_TRESHOLD and detections[0, 0, i, 5] < 1 and detections[0, 0, i, 6] < 1:
            face_detection = True
            break
            
      self._predictions.append(face_detection)
      
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
   
if __name__ == '__main__':
   face_detector_test = FaceDetectorTest()
   face_detector_test()
   
# if __name__ == '__main__':
#     import argparse
#     parser = argparse.ArgumentParser(description='Process image file.')
#     parser.add_argument('--input_file', type=str, help='Path to the image file')
#     args = parser.parse_args()

#     faceDetector = FaceDetector()

#     # Se l'argomento --input_file non è specificato, acquisisci dalla webcam
#     if args.input_file is None:
#         cap = cv2.VideoCapture(0)
#         while True:
#             ret, frame = cap.read()
#             if not ret:
#                 print("Errore durante la lettura dal dispositivo di input.")
#                 break
#             frameFace, bboxes = faceDetector(frame)
#             print(bboxes)
#             cv2.imshow("Face Detection", frameFace)
#             if cv2.waitKey(1) & 0xFF == ord('q'):
#                 break
#         cap.release()
#         cv2.destroyAllWindows()
#     else:
#         frame = cv2.imread(args.input_file)
#         frameFace, bboxes = faceDetector(frame)
#         cv2.imshow("Face Detection", frameFace)
#         cv2.waitKey(0)
#         cv2.destroyAllWindows()