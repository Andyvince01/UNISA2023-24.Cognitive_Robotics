#!/usr/bin/env python3
from chatbot.srv import Dialogue, DialogueResponse

import rospy
import requests

class DialogueServer():
    
    def __init__(self) -> None:
        rospy.init_node('dialogue service')
        rospy.Service('dialogue_server', Dialogue, self._handle_service)

    def _handle_service(self, req):
        input_text = req.input_text 

        # Get answer        
        get_answer_url = 'http://localhost:5002/webhooks/rest/webhook'
        message = {
            "sender": 'bot',
            "message": input_text
        }

        r = requests.post(get_answer_url, json=message)
        response = DialogueResponse()
        response.answer = ""
        for i in r.json():
            response.answer += i['text'] + ' ' if 'text' in i else ''

        return response

    def start(self,):
        rospy.logdebug('Dialogue server READY.')
        try:
            rospy.spin()
        except KeyboardInterrupt:
            print("Shutting down")


if __name__ == '__main__':
    ds = DialogueServer()
    ds.start()