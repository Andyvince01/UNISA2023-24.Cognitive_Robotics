#!/usr/bin/python3
import json
import os
import rospy

from optparse import OptionParser
from session import *
from std_msgs.msg import String

from features.srv import TabletService, TabletServiceResponse

current_folder = os.path.dirname(os.path.abspath(__file__))

class TabletNode():
   """
   TabletNode class represents a ROS node for handling tablet interactions.

   Attributes:
      _session (Session): An instance of the Session class for communication with the robot.
      _tablet_proxy: A proxy for accessing the ALTabletService on the robot.
      _parameters (dict): A dictionary containing parameters related to tablet interactions.

   Methods:
      __init__(self, ip: str, port: int): Initializes the TabletNode with the specified IP and port.
      __call__(self) -> None: Initiates the ROS node and starts the tablet service.
      __handle_tablet(self, msg: TabletService) -> String: Handles incoming tablet service requests.
      __update_json(self, text: str) -> None: Updates the _parameters dictionary based on the received text.
   """

   def __init__(self, ip, port):
      """
      Initializes the TabletNode with the specified IP and port.

      Args:
         ip (str): The IP address of the robot.
         port (int): The port number for communication.

      Returns:
         None
      """
      self._session = Session(ip, port)
      self._tablet_proxy = self._session.get_service("ALTabletService")
      self._tablet_proxy.resetTablet()
      try:
         self._tablet_proxy.showWebview(r"http://10.0.1.244:5000/Video")
      except:
         self._tablet_proxy = self._session.get_service("ALTabletService")
         self._tablet_proxy.showWebview(r"http://10.0.1.244:5000/Video")
      self._parameters = {"gender": None, "upper_color": None, "lower_color": None, "bag": None, "hat": None}

   def __call__(self):
      """
      Initiates the ROS node and starts the tablet service.

      Returns:
         None
      """
      rospy.init_node('tablet_node')
      rospy.Service('tablet_service', TabletService, self.__handle_tablet)
      rospy.spin()
      rospy.on_shutdown(self._tablet_proxy.resetTablet())

   # Private Methods
   def __handle_tablet(self, msg: TabletService) -> TabletServiceResponse:
      """
      Handles incoming tablet service requests.

      Args:
         msg (TabletService): The received service request message.

      Returns:
         String: An acknowledgment message.
      """
      text = msg.input.data
      try:
         if "Let me check in my database." in text:
            self.__update_json(text)
            self._tablet_proxy.showWebview(r"http://10.0.1.244:5000/Form")
         else:
            self._tablet_proxy.showWebview(r"http://10.0.1.244:5000/Video")
      except:
         self._tablet_proxy = self._session.get_service("ALTabletService")
         if "Let me check in my database." in text:
            self.__update_json(text)
            self._tablet_proxy.showWebview(r"http://10.0.1.244:5000/Form")
         else:
            self._tablet_proxy.showWebview(r"http://10.0.1.244:5000/Video")
         
      return TabletServiceResponse(String("ACK"))

   def __update_json(self, text: str) -> None:
      """
      Updates the _parameters dictionary based on the received text.

      Args:
         text (str): The text received from the tablet.
      """
      
      if len(text.split("\n")) == 1:
         segments = ["- gender:", "- upper color:", "- lower color:", "- bag:", "- hat:", 'Would']
         for segment in segments:
            text = text.replace(segment, "\n" + segment)
      
      lines = text.split("\n")
      for line in lines:
         if "gender" in line:
               self._parameters["gender"] = line.split(':')[1].strip()
         elif "upper color" in line:
               self._parameters["upper_color"] = line.split(':')[1].strip()
         elif "lower color" in line:
               self._parameters["lower_color"] = line.split(':')[1].strip()
         elif "bag" in line:
               if line.split(":")[1].strip() != "None":
                  self._parameters["bag"] = line.split(":")[1].strip().lower() == "true" 
               else:
                  self._parameters["bag"] = "None"
         elif "hat" in line:
               if line.split(":")[1].strip() != "None":
                  self._parameters["hat"] = line.split(":")[1].strip().lower() == "true"
               else:
                  self._parameters["hat"] = "None"

      with open(os.path.join(current_folder, "form.json"), "w") as file:
         json.dump(self._parameters, file, indent=2)

if __name__ == "__main__":
   parser = OptionParser()
   parser.add_option("--ip", dest="ip", default="10.0.1.230")
   parser.add_option("--port", dest="port", default=9559)
   (options, args) = parser.parse_args()
   
   tablet_node = TabletNode(options.ip, int(options.port))
   tablet_node()