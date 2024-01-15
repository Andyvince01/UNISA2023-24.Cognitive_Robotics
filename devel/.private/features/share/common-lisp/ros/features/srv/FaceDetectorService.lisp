; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude FaceDetectorService-request.msg.html

(cl:defclass <FaceDetectorService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceDetectorService-request (<FaceDetectorService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetectorService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetectorService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<FaceDetectorService-request> is deprecated: use features-srv:FaceDetectorService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetectorService-request>) ostream)
  "Serializes a message object of type '<FaceDetectorService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetectorService-request>) istream)
  "Deserializes a message object of type '<FaceDetectorService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetectorService-request>)))
  "Returns string type for a service object of type '<FaceDetectorService-request>"
  "features/FaceDetectorServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetectorService-request)))
  "Returns string type for a service object of type 'FaceDetectorService-request"
  "features/FaceDetectorServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetectorService-request>)))
  "Returns md5sum for a message object of type '<FaceDetectorService-request>"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetectorService-request)))
  "Returns md5sum for a message object of type 'FaceDetectorService-request"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetectorService-request>)))
  "Returns full string definition for message of type '<FaceDetectorService-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetectorService-request)))
  "Returns full string definition for message of type 'FaceDetectorService-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetectorService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetectorService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetectorService-request
))
;//! \htmlinclude FaceDetectorService-response.msg.html

(cl:defclass <FaceDetectorService-response> (roslisp-msg-protocol:ros-message)
  ((presence
    :reader presence
    :initarg :presence
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass FaceDetectorService-response (<FaceDetectorService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetectorService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetectorService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<FaceDetectorService-response> is deprecated: use features-srv:FaceDetectorService-response instead.")))

(cl:ensure-generic-function 'presence-val :lambda-list '(m))
(cl:defmethod presence-val ((m <FaceDetectorService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:presence-val is deprecated.  Use features-srv:presence instead.")
  (presence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetectorService-response>) ostream)
  "Serializes a message object of type '<FaceDetectorService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'presence) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetectorService-response>) istream)
  "Deserializes a message object of type '<FaceDetectorService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'presence) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetectorService-response>)))
  "Returns string type for a service object of type '<FaceDetectorService-response>"
  "features/FaceDetectorServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetectorService-response)))
  "Returns string type for a service object of type 'FaceDetectorService-response"
  "features/FaceDetectorServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetectorService-response>)))
  "Returns md5sum for a message object of type '<FaceDetectorService-response>"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetectorService-response)))
  "Returns md5sum for a message object of type 'FaceDetectorService-response"
  "c02e001e41cea4c43b2f6bd8b43a538c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetectorService-response>)))
  "Returns full string definition for message of type '<FaceDetectorService-response>"
  (cl:format cl:nil "std_msgs/Bool presence~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetectorService-response)))
  "Returns full string definition for message of type 'FaceDetectorService-response"
  (cl:format cl:nil "std_msgs/Bool presence~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetectorService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'presence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetectorService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetectorService-response
    (cl:cons ':presence (presence msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceDetectorService)))
  'FaceDetectorService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceDetectorService)))
  'FaceDetectorService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetectorService)))
  "Returns string type for a service object of type '<FaceDetectorService>"
  "features/FaceDetectorService")