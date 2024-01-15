; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude AnimationService-request.msg.html

(cl:defclass <AnimationService-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass AnimationService-request (<AnimationService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnimationService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnimationService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<AnimationService-request> is deprecated: use features-srv:AnimationService-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <AnimationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:input-val is deprecated.  Use features-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnimationService-request>) ostream)
  "Serializes a message object of type '<AnimationService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnimationService-request>) istream)
  "Deserializes a message object of type '<AnimationService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnimationService-request>)))
  "Returns string type for a service object of type '<AnimationService-request>"
  "features/AnimationServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnimationService-request)))
  "Returns string type for a service object of type 'AnimationService-request"
  "features/AnimationServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnimationService-request>)))
  "Returns md5sum for a message object of type '<AnimationService-request>"
  "d8b7e9905e6a815639dc67959117aa3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnimationService-request)))
  "Returns md5sum for a message object of type 'AnimationService-request"
  "d8b7e9905e6a815639dc67959117aa3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnimationService-request>)))
  "Returns full string definition for message of type '<AnimationService-request>"
  (cl:format cl:nil "std_msgs/String input~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnimationService-request)))
  "Returns full string definition for message of type 'AnimationService-request"
  (cl:format cl:nil "std_msgs/String input~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnimationService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnimationService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AnimationService-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude AnimationService-response.msg.html

(cl:defclass <AnimationService-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass AnimationService-response (<AnimationService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnimationService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnimationService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<AnimationService-response> is deprecated: use features-srv:AnimationService-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <AnimationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:output-val is deprecated.  Use features-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnimationService-response>) ostream)
  "Serializes a message object of type '<AnimationService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnimationService-response>) istream)
  "Deserializes a message object of type '<AnimationService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnimationService-response>)))
  "Returns string type for a service object of type '<AnimationService-response>"
  "features/AnimationServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnimationService-response)))
  "Returns string type for a service object of type 'AnimationService-response"
  "features/AnimationServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnimationService-response>)))
  "Returns md5sum for a message object of type '<AnimationService-response>"
  "d8b7e9905e6a815639dc67959117aa3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnimationService-response)))
  "Returns md5sum for a message object of type 'AnimationService-response"
  "d8b7e9905e6a815639dc67959117aa3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnimationService-response>)))
  "Returns full string definition for message of type '<AnimationService-response>"
  (cl:format cl:nil "std_msgs/String output~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnimationService-response)))
  "Returns full string definition for message of type 'AnimationService-response"
  (cl:format cl:nil "std_msgs/String output~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnimationService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnimationService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AnimationService-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AnimationService)))
  'AnimationService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AnimationService)))
  'AnimationService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnimationService)))
  "Returns string type for a service object of type '<AnimationService>"
  "features/AnimationService")