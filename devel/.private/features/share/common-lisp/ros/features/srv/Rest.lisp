; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude Rest-request.msg.html

(cl:defclass <Rest-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Rest-request (<Rest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<Rest-request> is deprecated: use features-srv:Rest-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rest-request>) ostream)
  "Serializes a message object of type '<Rest-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rest-request>) istream)
  "Deserializes a message object of type '<Rest-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rest-request>)))
  "Returns string type for a service object of type '<Rest-request>"
  "features/RestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rest-request)))
  "Returns string type for a service object of type 'Rest-request"
  "features/RestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rest-request>)))
  "Returns md5sum for a message object of type '<Rest-request>"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rest-request)))
  "Returns md5sum for a message object of type 'Rest-request"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rest-request>)))
  "Returns full string definition for message of type '<Rest-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rest-request)))
  "Returns full string definition for message of type 'Rest-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rest-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Rest-request
))
;//! \htmlinclude Rest-response.msg.html

(cl:defclass <Rest-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Rest-response (<Rest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<Rest-response> is deprecated: use features-srv:Rest-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <Rest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:ack-val is deprecated.  Use features-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rest-response>) ostream)
  "Serializes a message object of type '<Rest-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ack) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rest-response>) istream)
  "Deserializes a message object of type '<Rest-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ack) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rest-response>)))
  "Returns string type for a service object of type '<Rest-response>"
  "features/RestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rest-response)))
  "Returns string type for a service object of type 'Rest-response"
  "features/RestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rest-response>)))
  "Returns md5sum for a message object of type '<Rest-response>"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rest-response)))
  "Returns md5sum for a message object of type 'Rest-response"
  "92dac20d0566a4f591e3ecd6dcd3458b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rest-response>)))
  "Returns full string definition for message of type '<Rest-response>"
  (cl:format cl:nil "std_msgs/String ack~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rest-response)))
  "Returns full string definition for message of type 'Rest-response"
  (cl:format cl:nil "std_msgs/String ack~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rest-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ack))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Rest-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Rest)))
  'Rest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Rest)))
  'Rest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rest)))
  "Returns string type for a service object of type '<Rest>"
  "features/Rest")