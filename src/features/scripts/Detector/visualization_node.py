#!/usr/bin/python3
import cv2
import rospy

from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from threading import Lock
from vision_msgs.msg import Detection2DArray, Detection2D

class VisualizationNode:
    """
    Class for visualizing object detection results on images.

    Attributes:
    - _br: CvBridge object for converting image messages to OpenCV format.
    - _image: Current image data for visualization.
    - _image_lock: Thread lock for safe access to image data.

    Methods:
    - __init__(self): Initializes the ObjectVisualizer class.
    - __call__(self): Initiates the ROS node, subscribes to image and detection topics, and starts visualization.
    - __receive_image(self, msg: Detection2DArray) -> None: Callback for receiving raw image messages.
    - __receive_detection(self, msg: Detection2DArray) -> None: Callback for receiving object detection messages.
    - __draw(self, d: Detection2D) -> None: Draws bounding boxes and labels on the current image.
    """
    
    def __init__(self) -> None:
        """
        Initializes the ObjectVisualizer class.

        Attributes:
        - _br: CvBridge object for image conversion.
        - _image: Holds the current image for visualization.
        - _image_lock: Thread lock for safe access to the image data.
        """
        self._br = CvBridge()
        self._image = None
        self._image_lock = Lock()

    def __call__(self) -> None:
        """
        Initiates the node, subscribes to video input, and starts visualization.

        Subscribes to '/image_feed' for raw images and '/people_detection' and '/face_detection'
        for object detections. Displays the annotated image with bounding boxes and labels.
        """
        rospy.init_node('visualization_node')
        rospy.Subscriber("/image_feed", Image, self.__receive_image)
        rospy.Subscriber("/people_detection", Detection2DArray, self.__receive_detection)
        rospy.Subscriber("/face_detection", Detection2DArray, self.__receive_detection)

        try:
            while not rospy.is_shutdown():
                with self._image_lock:
                    if self._image is not None:
                        cv2.imshow("Object Visualization", self._image)
                        cv2.waitKey(delay=1)
        except KeyboardInterrupt:
            pass

    # Private Methods
    def __receive_image(self, msg : Detection2DArray) -> None:
        """
        Callback function for receiving raw images.

        Args:
        - msg (Detection2DArray): Incoming image data.

        Converts the received image message to a OpenCV format and updates the _image attribute.
        """
        with self._image_lock:
            self._image = self._br.imgmsg_to_cv2(msg)

    def __receive_detection(self, msg : Detection2DArray) -> None:
        """
        Callback function for receiving object detection messages.

        Args:
        - msg (Detection2DArray): Incoming object detection data.

        Draws bounding boxes and labels on the current image based on the received detection data.
        """
        with self._image_lock:
            for d in msg.detections:
                self.__draw(d)

    def __draw(self, d : Detection2D) -> None:
        """
        Draws bounding boxes and labels on the image.

        Args:
        - d (Detection2D): Object detection data.

        Retrieves object information, calculates bounding box coordinates, and draws on the image.
        """
        c = "Person" if d.results[0].id == 1 else "Face" if d.results[0].id == 2 else "Error Id"
        s = d.results[0].score
        b = d.bbox

        image = self._image.copy()

        h, w, _ = image.shape

        # Calcola le coordinate dei punti del bounding box
        x1 = int((b.center.x - b.size_x / 2) * w)
        y1 = int((b.center.y - b.size_y / 2) * h)
        x2 = int((b.center.x + b.size_x / 2) * w)
        y2 = int((b.center.y + b.size_y / 2) * h)

        # Disegna il bounding box e il testo sull'immagine
        color = (255, 0, 0) if d.results[0].id == 1 else (0, 255, 0) if d.results[0].id == 2 else (0, 0, 255)
        cv2.rectangle(image, (x1, y1), (x2, y2), color, 3)
        cv2.putText(image, f"{c} {s:.2f}", (x1 - 9, y1), cv2.FONT_HERSHEY_SIMPLEX, 0.75, color, 2)

        self._image = image

if __name__ == "__main__":
    visualization_node = VisualizationNode()
    visualization_node()