#!/usr/bin/python3
import cv2
import os
import rospy

from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from std_msgs.msg import Bool
from threading import Lock
from vision_msgs.msg import Detection2D, Detection2DArray, ObjectHypothesisWithPose

script_dir = os.path.dirname(os.path.abspath(__file__))
FACE_PROTO = os.path.join(script_dir, "FaceDetectorModels", "opencv_face_detector.pbtxt")
FACE_MODEL = os.path.join(script_dir, "FaceDetectorModels", "opencv_face_detector_uint8.pb")
FACE_SCORE_TRESHOLD = 0.5

class FaceDetectorNode():
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
        self._publisher = rospy.Publisher('/face_detection', Detection2DArray, queue_size=1)
        self._image_lock = Lock()
    
    def __call__(self) -> None:
        """
        Initiates the ROS node, subscribes to the video input, and starts the face detection process.

        Uses the FaceNet model to detect faces in the incoming image messages.
        """
        rospy.init_node('face_detector', anonymous=True)
        rospy.Subscriber('/image_feed', Image, self.__handle_detector)
        try:
            rospy.spin()
        except KeyboardInterrupt:
            pass

    def __handle_detector(self, msg : Image) -> Bool:
        """
        Callback function for processing image messages and detecting faces.

        Args:
        - msg: Incoming image message.
        
        Returns:
        - Bool: True if face is detected. Otherwise, False.

        Processes the image, performs face detection, and publishes the detection results.
        """
        frame = self._br.imgmsg_to_cv2(msg)     
        image = frame.copy() if frame is not None else None

        blob = cv2.dnn.blobFromImage(image, 1.0, (300, 300), [104, 117, 123], swapRB=True, crop=False)

        with self._image_lock:
            self._faceNet.setInput(blob)
            detections = self._faceNet.forward()
        
        message = Detection2DArray()
        
        for i in range(detections.shape[2]):
            score = detections[0, 0, i, 2]
            if score > FACE_SCORE_TRESHOLD and detections[0, 0, i, 5] < 1 and detections[0, 0, i, 6] < 1:
                xmin, ymin, xmax, ymax = detections[0, 0, i, 3], detections[0, 0, i, 4], \
                                        detections[0, 0, i, 5], detections[0, 0, i, 6]
                                
                # Ritaglia l'area del bounding box (puoi aggiungere eventuali margini) : face_roi = image[ymin:ymax, xmin:xmax]
                d = Detection2D()
                d.bbox.size_x = xmax - xmin
                d.bbox.size_y = ymax - ymin
                d.bbox.center.x = xmin + d.bbox.size_x/2
                d.bbox.center.y = ymin + d.bbox.size_y/2
                o = ObjectHypothesisWithPose()
                o.score = score
                o.id = 2
                d.results.append(o)
                # rospy.loginfo("Face Detected!")
                message.detections.append(d)
                            
        self._publisher.publish(message)

if __name__ == '__main__':
    face_detector_node = FaceDetectorNode()
    face_detector_node()

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