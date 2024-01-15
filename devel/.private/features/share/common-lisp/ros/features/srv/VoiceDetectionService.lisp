; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude VoiceDetectionService-request.msg.html

(cl:defclass <VoiceDetectionService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass VoiceDetectionService-request (<VoiceDetectionService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoiceDetectionService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoiceDetectionService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<VoiceDetectionService-request> is deprecated: use features-srv:VoiceDetectionService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoiceDetectionService-request>) ostream)
  "Serializes a message object of type '<VoiceDetectionService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoiceDetectionService-request>) istream)
  "Deserializes a message object of type '<VoiceDetectionService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoiceDetectionService-request>)))
  "Returns string type for a service object of type '<VoiceDetectionService-request>"
  "features/VoiceDetectionServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoiceDetectionService-request)))
  "Returns string type for a service object of type 'VoiceDetectionService-request"
  "features/VoiceDetectionServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoiceDetectionService-request>)))
  "Returns md5sum for a message object of type '<VoiceDetectionService-request>"
  "c4e176c9f8ad32507aa931a67656b59c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoiceDetectionService-request)))
  "Returns md5sum for a message object of type 'VoiceDetectionService-request"
  "c4e176c9f8ad32507aa931a67656b59c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoiceDetectionService-request>)))
  "Returns full string definition for message of type '<VoiceDetectionService-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoiceDetectionService-request)))
  "Returns full string definition for message of type 'VoiceDetectionService-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoiceDetectionService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoiceDetectionService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VoiceDetectionService-request
))
;//! \htmlinclude VoiceDetectionService-response.msg.html

(cl:defclass <VoiceDetectionService-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type std_msgs-msg:Int16MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int16MultiArray)))
)

(cl:defclass VoiceDetectionService-response (<VoiceDetectionService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoiceDetectionService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoiceDetectionService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<VoiceDetectionService-response> is deprecated: use features-srv:VoiceDetectionService-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <VoiceDetectionService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:output-val is deprecated.  Use features-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoiceDetectionService-response>) ostream)
  "Serializes a message object of type '<VoiceDetectionService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoiceDetectionService-response>) istream)
  "Deserializes a message object of type '<VoiceDetectionService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoiceDetectionService-response>)))
  "Returns string type for a service object of type '<VoiceDetectionService-response>"
  "features/VoiceDetectionServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoiceDetectionService-response)))
  "Returns string type for a service object of type 'VoiceDetectionService-response"
  "features/VoiceDetectionServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoiceDetectionService-response>)))
  "Returns md5sum for a message object of type '<VoiceDetectionService-response>"
  "c4e176c9f8ad32507aa931a67656b59c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoiceDetectionService-response)))
  "Returns md5sum for a message object of type 'VoiceDetectionService-response"
  "c4e176c9f8ad32507aa931a67656b59c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoiceDetectionService-response>)))
  "Returns full string definition for message of type '<VoiceDetectionService-response>"
  (cl:format cl:nil "std_msgs/Int16MultiArray output~%~%================================================================================~%MSG: std_msgs/Int16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int16[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoiceDetectionService-response)))
  "Returns full string definition for message of type 'VoiceDetectionService-response"
  (cl:format cl:nil "std_msgs/Int16MultiArray output~%~%================================================================================~%MSG: std_msgs/Int16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int16[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoiceDetectionService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoiceDetectionService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VoiceDetectionService-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VoiceDetectionService)))
  'VoiceDetectionService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VoiceDetectionService)))
  'VoiceDetectionService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoiceDetectionService)))
  "Returns string type for a service object of type '<VoiceDetectionService>"
  "features/VoiceDetectionService")