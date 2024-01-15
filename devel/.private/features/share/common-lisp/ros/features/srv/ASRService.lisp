; Auto-generated. Do not edit!


(cl:in-package features-srv)


;//! \htmlinclude ASRService-request.msg.html

(cl:defclass <ASRService-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type std_msgs-msg:Int16MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int16MultiArray)))
)

(cl:defclass ASRService-request (<ASRService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<ASRService-request> is deprecated: use features-srv:ASRService-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <ASRService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:input-val is deprecated.  Use features-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRService-request>) ostream)
  "Serializes a message object of type '<ASRService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRService-request>) istream)
  "Deserializes a message object of type '<ASRService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRService-request>)))
  "Returns string type for a service object of type '<ASRService-request>"
  "features/ASRServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRService-request)))
  "Returns string type for a service object of type 'ASRService-request"
  "features/ASRServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRService-request>)))
  "Returns md5sum for a message object of type '<ASRService-request>"
  "e84f65894fbd5cd8d89dc52e87b8854a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRService-request)))
  "Returns md5sum for a message object of type 'ASRService-request"
  "e84f65894fbd5cd8d89dc52e87b8854a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRService-request>)))
  "Returns full string definition for message of type '<ASRService-request>"
  (cl:format cl:nil "std_msgs/Int16MultiArray input~%~%================================================================================~%MSG: std_msgs/Int16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int16[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRService-request)))
  "Returns full string definition for message of type 'ASRService-request"
  (cl:format cl:nil "std_msgs/Int16MultiArray input~%~%================================================================================~%MSG: std_msgs/Int16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int16[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRService-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude ASRService-response.msg.html

(cl:defclass <ASRService-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ASRService-response (<ASRService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name features-srv:<ASRService-response> is deprecated: use features-srv:ASRService-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <ASRService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader features-srv:output-val is deprecated.  Use features-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRService-response>) ostream)
  "Serializes a message object of type '<ASRService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRService-response>) istream)
  "Deserializes a message object of type '<ASRService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRService-response>)))
  "Returns string type for a service object of type '<ASRService-response>"
  "features/ASRServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRService-response)))
  "Returns string type for a service object of type 'ASRService-response"
  "features/ASRServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRService-response>)))
  "Returns md5sum for a message object of type '<ASRService-response>"
  "e84f65894fbd5cd8d89dc52e87b8854a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRService-response)))
  "Returns md5sum for a message object of type 'ASRService-response"
  "e84f65894fbd5cd8d89dc52e87b8854a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRService-response>)))
  "Returns full string definition for message of type '<ASRService-response>"
  (cl:format cl:nil "std_msgs/String output~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRService-response)))
  "Returns full string definition for message of type 'ASRService-response"
  (cl:format cl:nil "std_msgs/String output~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRService-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ASRService)))
  'ASRService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ASRService)))
  'ASRService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRService)))
  "Returns string type for a service object of type '<ASRService>"
  "features/ASRService")