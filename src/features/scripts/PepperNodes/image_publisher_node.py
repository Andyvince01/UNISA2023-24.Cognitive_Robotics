#!/usr/bin/python3
import cv2
import numpy as np
import rospy

from cv_bridge import CvBridge
from optparse import OptionParser
from session import Session
from sensor_msgs.msg import Image

TOP_CAMERA = 0
BOTTOM_CAMERA = 1
DEPTH_CAMERA = 2

RES_120P = 0
RES_240P = 1
RES_480P = 2
RES_960P = 3

COLORSPACE_GRAYSCALE = 8
COLORSPACE_RGB = 13

MODE_RGB = 0
MODE_DEPTH = 1
MODE_RGBD = 2

class ImagePublisherNode:
    """
    Class for publishing video frames from a camera as ROS Image messages.

    Attributes:
    - _bridge: CvBridge object for converting between OpenCV images and ROS Image messages.
    - _capture: OpenCV VideoCapture object for capturing video frames from a camera.
    - _fps: Frames per second setting for video capture.

    Methods:
    - __init__(self, camera_index=0, resolution=(640, 480), fps=20): Initializes the ImagePublisher class.
    - __call__(self): Initiates the ROS node, sets up a publisher, and continuously publishes video frames.
    - __get_color_frame(self): Captures and returns a color video frame from the camera.
    - __stop(self): Releases the video capture resources when the node is interrupted.
    """

    def __init__(self, pepper_camera_on : bool, ip: str, port: int, resolution=RES_480P, rgb_camera=TOP_CAMERA, fps=20) -> None:
        self._pepper_camera_on = pepper_camera_on
        self._fps = fps
        # Resolution Converter
        self._bridge = CvBridge()
        if resolution == RES_120P:
            self._width, self._height = 160, 120
        elif resolution == RES_240P:
            self._width, self._height = 320, 240
        elif resolution == RES_480P:
            self._width, self._height = 640, 480
        elif resolution == RES_960P:
            self._width, self._height = 1280, 960
        else:
            self.width, self.height = None, None
        # Camera Configuration
        if not self._pepper_camera_on:
            self._capture = cv2.VideoCapture(0)
            self._capture.set(cv2.CAP_PROP_FRAME_WIDTH, self._width)
            self._capture.set(cv2.CAP_PROP_FRAME_HEIGHT, self._height)
        else:
            self._session = Session(ip, port)
            self._camera = self._session.get_service("ALVideoDevice")
            self._rgb_sub = self._camera.subscribeCamera("RGB Stream", rgb_camera, resolution, COLORSPACE_RGB, self._fps) #https://bit.ly/3BEFZIr
            if not self._rgb_sub:
                raise Exception("Camera is not initialized properly")
    
    def __call__(self) -> None:
        """
        Initiates the ROS node, sets up a publisher, and continuously publishes video frames as ROS Image messages.
        """
        rospy.init_node('image_publisher', anonymous=True)
        self._publisher = rospy.Publisher('/image_feed', Image, queue_size=1)
        self._rate = rospy.Rate(self._fps)
        try:
            while not rospy.is_shutdown():
                frame = self.__get_color_frame()
                if frame is not None:
                    msg = self._bridge.cv2_to_imgmsg(frame, encoding="bgr8")
                    msg.header.stamp = rospy.Time.now()
                    self._publisher.publish(msg)
                self._rate.sleep()
        except rospy.ROSInterruptException:
            self.__stop()

    # Private Methods
    def __get_color_frame(self) -> None:
        """
        Captures and returns a color video frame from the camera.

        Returns:
        - frame: Color video frame as a NumPy array (BGR format).
        """
        if self._pepper_camera_on:
            raw_rgb = self._camera.getImageRemote(self._rgb_sub)
            image = np.frombuffer(raw_rgb[6], np.uint8).reshape(raw_rgb[1], raw_rgb[0], 3)
            return image
        else:
            ret, frame = self._capture.read()
            return frame if ret else None

    def __get_fov(self, mode="RGB"):
        '''
        Returns the horizontal and vertical field of view of the camera, expressed in radians.
        '''
        hfov, vfov = 0, 0
        if mode == "RGB":
            hfov = 57.2 * np.pi / 180
            vfov = 44.3 * np.pi / 180
        return hfov, vfov

    def __stop(self) -> None:
        """
        Releases the video capture resources when the node is interrupted.
        """
        if self._pepper_camera_on:
            self._camera.unsubscribe(self._rgb_sub)
        else:
            self._capture.release()

if __name__ == "__main__":
    parser = OptionParser()
    parser.add_option("--pepper_camera_on", dest="pepper_camera_on", default="True")
    parser.add_option("--ip", dest="ip", default="10.0.1.207")
    parser.add_option("--port", dest="port", default=9559)
    (options, args) = parser.parse_args()
    try:
        pepper_camera_on=(options.pepper_camera_on.lower() == "true")
        image_publisher_node = ImagePublisherNode(pepper_camera_on=pepper_camera_on, ip=options.ip, port=int(options.port))
        image_publisher_node()
    except rospy.ROSInterruptException:
        pass