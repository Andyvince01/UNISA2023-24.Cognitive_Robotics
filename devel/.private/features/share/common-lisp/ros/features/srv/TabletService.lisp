; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude TabletService-request.msg.html

(cl:defclass <TabletService-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TabletService-request (<TabletService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TabletService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TabletService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<TabletService-request> is deprecated: use features-srv:TabletService-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <TabletService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:input-val is deprecated.  Use features-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TabletService-request>) ostream)
  "Serializes a message object of type '<TabletService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TabletService-request>) istream)
  "Deserializes a message object of type '<TabletService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TabletService-request>)))
  "Returns string type for a service object of type '<TabletService-request>"
  "features/TabletServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TabletService-request)))
  "Returns string type for a service object of type 'TabletService-request"
  "features/TabletServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TabletService-request>)))
  "Returns md5sum for a message object of type '<TabletService-request>"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TabletService-request)))
  "Returns md5sum for a message object of type 'TabletService-request"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TabletService-request>)))
  "Returns full string definition for message of type '<TabletService-request>"
  (cl:format cl:nil "std_msgs/String input~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TabletService-request)))
  "Returns full string definition for message of type 'TabletService-request"
  (cl:format cl:nil "std_msgs/String input~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TabletService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TabletService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TabletService-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude TabletService-response.msg.html

(cl:defclass <TabletService-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TabletService-response (<TabletService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TabletService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TabletService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<TabletService-response> is deprecated: use features-srv:TabletService-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <TabletService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:ack-val is deprecated.  Use features-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TabletService-response>) ostream)
  "Serializes a message object of type '<TabletService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ack) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TabletService-response>) istream)
  "Deserializes a message object of type '<TabletService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ack) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TabletService-response>)))
  "Returns string type for a service object of type '<TabletService-response>"
  "features/TabletServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TabletService-response)))
  "Returns string type for a service object of type 'TabletService-response"
  "features/TabletServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TabletService-response>)))
  "Returns md5sum for a message object of type '<TabletService-response>"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TabletService-response)))
  "Returns md5sum for a message object of type 'TabletService-response"
  "8b55dba5ce52d0e4d2c88f751b201113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TabletService-response>)))
  "Returns full string definition for message of type '<TabletService-response>"
  (cl:format cl:nil "std_msgs/String ack~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TabletService-response)))
  "Returns full string definition for message of type 'TabletService-response"
  (cl:format cl:nil "std_msgs/String ack~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TabletService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ack))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TabletService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TabletService-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TabletService)))
  'TabletService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TabletService)))
  'TabletService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TabletService)))
  "Returns string type for a service object of type '<TabletService>"
  "features/TabletService")