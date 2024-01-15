; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude WakeUp-request.msg.html

(cl:defclass <WakeUp-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WakeUp-request (<WakeUp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WakeUp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WakeUp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<WakeUp-request> is deprecated: use features-srv:WakeUp-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WakeUp-request>) ostream)
  "Serializes a message object of type '<WakeUp-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WakeUp-request>) istream)
  "Deserializes a message object of type '<WakeUp-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WakeUp-request>)))
  "Returns string type for a service object of type '<WakeUp-request>"
  "features/WakeUpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WakeUp-request)))
  "Returns string type for a service object of type 'WakeUp-request"
  "features/WakeUpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WakeUp-request>)))
  "Returns md5sum for a message object of type '<WakeUp-request>"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WakeUp-request)))
  "Returns md5sum for a message object of type 'WakeUp-request"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WakeUp-request>)))
  "Returns full string definition for message of type '<WakeUp-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WakeUp-request)))
  "Returns full string definition for message of type 'WakeUp-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WakeUp-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WakeUp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WakeUp-request
))
;//! \htmlinclude WakeUp-response.msg.html

(cl:defclass <WakeUp-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass WakeUp-response (<WakeUp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WakeUp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WakeUp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<WakeUp-response> is deprecated: use features-srv:WakeUp-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <WakeUp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:ack-val is deprecated.  Use features-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WakeUp-response>) ostream)
  "Serializes a message object of type '<WakeUp-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ack) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WakeUp-response>) istream)
  "Deserializes a message object of type '<WakeUp-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ack) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WakeUp-response>)))
  "Returns string type for a service object of type '<WakeUp-response>"
  "features/WakeUpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WakeUp-response)))
  "Returns string type for a service object of type 'WakeUp-response"
  "features/WakeUpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WakeUp-response>)))
  "Returns md5sum for a message object of type '<WakeUp-response>"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WakeUp-response)))
  "Returns md5sum for a message object of type 'WakeUp-response"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WakeUp-response>)))
  "Returns full string definition for message of type '<WakeUp-response>"
  (cl:format cl:nil "std_msgs/String ack~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WakeUp-response)))
  "Returns full string definition for message of type 'WakeUp-response"
  (cl:format cl:nil "std_msgs/String ack~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WakeUp-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ack))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WakeUp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WakeUp-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WakeUp)))
  'WakeUp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WakeUp)))
  'WakeUp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WakeUp)))
  "Returns string type for a service object of type '<WakeUp>"
  "features/WakeUp")