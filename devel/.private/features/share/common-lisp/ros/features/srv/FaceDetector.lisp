; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude FaceDetector-request.msg.html

(cl:defclass <FaceDetector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceDetector-request (<FaceDetector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<FaceDetector-request> is deprecated: use features-srv:FaceDetector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetector-request>) ostream)
  "Serializes a message object of type '<FaceDetector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetector-request>) istream)
  "Deserializes a message object of type '<FaceDetector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetector-request>)))
  "Returns string type for a service object of type '<FaceDetector-request>"
  "features/FaceDetectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetector-request)))
  "Returns string type for a service object of type 'FaceDetector-request"
  "features/FaceDetectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetector-request>)))
  "Returns md5sum for a message object of type '<FaceDetector-request>"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetector-request)))
  "Returns md5sum for a message object of type 'FaceDetector-request"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetector-request>)))
  "Returns full string definition for message of type '<FaceDetector-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetector-request)))
  "Returns full string definition for message of type 'FaceDetector-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetector-request
))
;//! \htmlinclude FaceDetector-response.msg.html

(cl:defclass <FaceDetector-response> (roslisp-msg-protocol:ros-message)
  ((presence
    :reader presence
    :initarg :presence
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass FaceDetector-response (<FaceDetector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<FaceDetector-response> is deprecated: use features-srv:FaceDetector-response instead.")))

(cl:ensure-generic-function 'presence-val :lambda-list '(m))
(cl:defmethod presence-val ((m <FaceDetector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:presence-val is deprecated.  Use features-srv:presence instead.")
  (presence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetector-response>) ostream)
  "Serializes a message object of type '<FaceDetector-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'presence) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetector-response>) istream)
  "Deserializes a message object of type '<FaceDetector-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'presence) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetector-response>)))
  "Returns string type for a service object of type '<FaceDetector-response>"
  "features/FaceDetectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetector-response)))
  "Returns string type for a service object of type 'FaceDetector-response"
  "features/FaceDetectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetector-response>)))
  "Returns md5sum for a message object of type '<FaceDetector-response>"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetector-response)))
  "Returns md5sum for a message object of type 'FaceDetector-response"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetector-response>)))
  "Returns full string definition for message of type '<FaceDetector-response>"
  (cl:format cl:nil "std_msgs/Bool presence~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetector-response)))
  "Returns full string definition for message of type 'FaceDetector-response"
  (cl:format cl:nil "std_msgs/Bool presence~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetector-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'presence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetector-response
    (cl:cons ':presence (presence msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceDetector)))
  'FaceDetector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceDetector)))
  'FaceDetector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetector)))
  "Returns string type for a service object of type '<FaceDetector>"
  "features/FaceDetector")