; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude Text2Speech-request.msg.html

(cl:defclass <Text2Speech-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Text2Speech-request (<Text2Speech-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Text2Speech-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Text2Speech-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<Text2Speech-request> is deprecated: use features-srv:Text2Speech-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Text2Speech-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:input-val is deprecated.  Use features-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Text2Speech-request>) ostream)
  "Serializes a message object of type '<Text2Speech-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Text2Speech-request>) istream)
  "Deserializes a message object of type '<Text2Speech-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Text2Speech-request>)))
  "Returns string type for a service object of type '<Text2Speech-request>"
  "features/Text2SpeechRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Text2Speech-request)))
  "Returns string type for a service object of type 'Text2Speech-request"
  "features/Text2SpeechRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Text2Speech-request>)))
  "Returns md5sum for a message object of type '<Text2Speech-request>"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Text2Speech-request)))
  "Returns md5sum for a message object of type 'Text2Speech-request"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Text2Speech-request>)))
  "Returns full string definition for message of type '<Text2Speech-request>"
  (cl:format cl:nil "std_msgs/String input~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Text2Speech-request)))
  "Returns full string definition for message of type 'Text2Speech-request"
  (cl:format cl:nil "std_msgs/String input~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Text2Speech-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Text2Speech-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Text2Speech-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude Text2Speech-response.msg.html

(cl:defclass <Text2Speech-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Text2Speech-response (<Text2Speech-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Text2Speech-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Text2Speech-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<Text2Speech-response> is deprecated: use features-srv:Text2Speech-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <Text2Speech-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:ack-val is deprecated.  Use features-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Text2Speech-response>) ostream)
  "Serializes a message object of type '<Text2Speech-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ack) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Text2Speech-response>) istream)
  "Deserializes a message object of type '<Text2Speech-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ack) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Text2Speech-response>)))
  "Returns string type for a service object of type '<Text2Speech-response>"
  "features/Text2SpeechResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Text2Speech-response)))
  "Returns string type for a service object of type 'Text2Speech-response"
  "features/Text2SpeechResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Text2Speech-response>)))
  "Returns md5sum for a message object of type '<Text2Speech-response>"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Text2Speech-response)))
  "Returns md5sum for a message object of type 'Text2Speech-response"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Text2Speech-response>)))
  "Returns full string definition for message of type '<Text2Speech-response>"
  (cl:format cl:nil "std_msgs/String ack~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Text2Speech-response)))
  "Returns full string definition for message of type 'Text2Speech-response"
  (cl:format cl:nil "std_msgs/String ack~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Text2Speech-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ack))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Text2Speech-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Text2Speech-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Text2Speech)))
  'Text2Speech-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Text2Speech)))
  'Text2Speech-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Text2Speech)))
  "Returns string type for a service object of type '<Text2Speech>"
  "features/Text2Speech")