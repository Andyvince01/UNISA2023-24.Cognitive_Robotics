#!/usr/bin/python3
import rospy

from features.srv import *

class AudioTestNode():
    def __init__(self):      
        # Init Ros Node
        rospy.init_node('audio_test')
        rospy.on_shutdown(self.__handle_shutdown)
        # Init Services
        self._services = ServiceHandler()
        self._services._init_service('asr_service', ASRService, persistent=True)
        self._services._init_service('voice_detection_service', VoiceDetectionService, persistent=True)
        
    def __call__(self):
        while not rospy.is_shutdown():            
            audio = self.__hadle_voice_detection()
            if audio.data == (0, 0):
               rospy.logwarn("No audio detected")
               continue
            text = self.__handle_s2t(audio)
               
    def __hadle_voice_detection(self):
        audio_data = self._services('voice_detection_service')
        return audio_data.output
       
    def __handle_s2t(self, audio):
        s2t = self._services('asr_service', audio)
        return s2t.output.data if s2t is not None else None
    
    def __handle_shutdown(self):
        self._services._close_services()
    
class ServiceHandler:
    def __init__(self):
        """
        Initialize the ServiceHandler class.

        Attributes:
            _services (dict): Dictionary to store persistent service connections.
        """
        self._services = {}
        self._persistent_services = {}

    def _init_service(self, service_name: str, service_class: any, persistent: bool = False):
        """
        Initialize a service connection.

        Args:
            service_name (str): The name of the ROS service.
            persistent (bool): Whether to use a persistent connection (default: False).
            
        Nb. Persistent connections should be used carefully. They greatly improve performance for repeated requests, 
        but they also make your client more fragile to service failures. Clients using persistent connections should 
        implement their own reconnection logic in the event that the persistent connection fails.
        """
        try:
            if persistent:
                # Initialize persistent service connection
                service_proxy = rospy.ServiceProxy(service_name, service_class, persistent=True)
                self._persistent_services[service_name] = service_proxy
            else:
                # Initialize non-persistent service connection
                rospy.wait_for_service(service_name)
                service_proxy = rospy.ServiceProxy(service_name, service_class, persistent=False)

            # Store the service connection in the dictionary
            self._services[service_name] = service_proxy

        except rospy.ServiceException as e:
            rospy.logerr(f"Failed to initialize service '{service_name}': {e}")

    def __call__(self, service_name: str, *args) -> any:
        """
        Call a service with the provided arguments.

        Args:
            service_name (str): The name of the ROS service.
            *args: Variable number of arguments to pass to the service.

        Returns:
            None
        """
        try:
            # Call the service with the provided arguments
            if args:
                response = self._services[service_name](*args)
            else:
                response = self._services[service_name]()
            return response
        
        except rospy.ServiceException as e:
            rospy.logerr(f"Failed to call service '{service_name}': {e}")
            return None
            
    def _close_services(self):
        """
        Close only persistent services connections.
        """
        try:
            # Close only persistent service connections
            for service_name in self._persistent_services.keys():
                self._services[service_name].close()
        except rospy.ServiceException as e:
            rospy.logerr(f"Failed to close persistent services: {e}")

    def __str__(self) -> str:
        '''
        Return the service_name of all the services stored in the dict 'self._servicies'
        '''
        return '\n'.join([f"Service {service}" for service in self._services.keys()])    

if __name__ == '__main__':
   audio_test_node = AudioTestNode()
   audio_test_node()
   