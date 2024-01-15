#!/usr/bin/python3
import cv2
import os
import rospy

from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from threading import Lock
from vision_msgs.msg import Detection2D, Detection2DArray, ObjectHypothesisWithPose

script_dir = os.path.dirname(os.path.abspath(__file__))
PEOPLE_PROTO = os.path.join(script_dir, "PeopleDetectorModels/MobileNet", "MobileNetSSD_deploy.prototxt")
PEOPLE_MODEL = os.path.join(script_dir, "PeopleDetectorModels/MobileNet", "MobileNetSSD_deploy.caffemodel")
POEPLE_SCORE_THREHSOLD = 0.5

class PeopleDetectorNode():
   """
   Class for detecting people in images using the EfficientDet model.

   Attributes:
      - _br: CvBridge object for converting image messages to OpenCV format.
      - _model: EfficientDet model loaded from pre-trained weights.
      - _publisher: ROS publisher for sending people detection results.
      - _image_lock: Thread lock for safe access to image data.

   Methods:
      - __init__(self): Initializes the PeopleDetector class, loads the model, and sets up ROS publisher.
      - __call__(self): Initiates the ROS node, subscribes to the video input, and starts the detection process.
      - __handle_detector(self, msg): Callback function for processing image messages and detecting people.
   """
   
   def __init__(self) -> None:
      """
      Initializes the PeopleDetector class.

      Loads the MobileNetSSD model, sets up a ROS publisher, and initializes the image lock.
      """
      self._br = CvBridge()
      self._model = cv2.dnn.readNet(PEOPLE_PROTO, PEOPLE_MODEL)
      self._publisher = rospy.Publisher('/people_detection', Detection2DArray, queue_size=1)
      self._image_lock = Lock()
                
   def __call__(self) -> None:
      """
      Initiates the ROS node, subscribes to the video input, and starts the people detection process.

      Uses the MobileNetSSD model to detect people in the incoming image messages.
      """
      rospy.init_node('people_detector', anonymous=True)
      rospy.loginfo("People Detector ready.")
      rospy.Subscriber('/image_feed', Image, self.__handle_detector)
      try:
         rospy.spin()
      except KeyboardInterrupt:
         pass

   def __handle_detector(self, msg : Image) -> None:
      """
      Callback function for processing image messages and detecting people.

      Args:
      - msg: Incoming image message.

      Processes the image, performs people detection, and publishes the detection results.
      """
      frame = self._br.imgmsg_to_cv2(msg) 
      image = frame.copy() if frame is not None else None

      blob = cv2.dnn.blobFromImage(image, 0.007843, (300, 300), 127.5)
     
      with self._image_lock:
         self._model.setInput(blob)
         detections = self._model.forward()
         
      message = Detection2DArray() 
                     
      for i in range(detections.shape[2]):
         score = detections[0, 0, i, 2]
         if score >= POEPLE_SCORE_THREHSOLD and int(detections[0, 0, i, 1]) == 15:
               xmin, ymin, xmax, ymax = detections[0, 0, i, 3], detections[0, 0, i, 4], \
                                       detections[0, 0, i, 5], detections[0, 0, i, 6]
                              
               d = Detection2D()
               d.bbox.size_x = xmax - xmin
               d.bbox.size_y = ymax - ymin
               d.bbox.center.x = xmin + d.bbox.size_x/2
               d.bbox.center.y = ymin + d.bbox.size_y/2
               o = ObjectHypothesisWithPose()
               o.score = score
               o.id = 1
               # rospy.loginfo("Person Detected!")
               d.results.append(o)
               message.detections.append(d)
                            
      self._publisher.publish(message)
      
if __name__ == '__main__':
    people_detector_node = PeopleDetectorNode()
    people_detector_node()