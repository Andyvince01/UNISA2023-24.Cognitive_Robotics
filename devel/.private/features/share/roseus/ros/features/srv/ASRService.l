;; Auto-generated. Do not edit!


(when (boundp 'features::ASRService)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'ASRService (find-package "FEATURES")))
(unless (find-package "FEATURES::ASRSERVICE")
  (make-package "FEATURES::ASRSERVICE"))
(unless (find-package "FEATURES::ASRSERVICEREQUEST")
  (make-package "FEATURES::ASRSERVICEREQUEST"))
(unless (find-package "FEATURES::ASRSERVICERESPONSE")
  (make-package "FEATURES::ASRSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::ASRServiceRequest
  :super ros::object
  :slots (_input ))

(defmethod features::ASRServiceRequest
  (:init
   (&key
    ((:input __input) (instance std_msgs::Int16MultiArray :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int16MultiArray _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int16MultiArray _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int16MultiArray _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass features::ASRServiceResponse
  :super ros::object
  :slots (_output ))

(defmethod features::ASRServiceResponse
  (:init
   (&key
    ((:output __output) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass features::ASRService
  :super ros::object
  :slots ())

(setf (get features::ASRService :md5sum-) "e84f65894fbd5cd8d89dc52e87b8854a")
(setf (get features::ASRService :datatype-) "features/ASRService")
(setf (get features::ASRService :request) features::ASRServiceRequest)
(setf (get features::ASRService :response) features::ASRServiceResponse)

(defmethod features::ASRServiceRequest
  (:response () (instance features::ASRServiceResponse :init)))

(setf (get features::ASRServiceRequest :md5sum-) "e84f65894fbd5cd8d89dc52e87b8854a")
(setf (get features::ASRServiceRequest :datatype-) "features/ASRServiceRequest")
(setf (get features::ASRServiceRequest :definition-)
      "std_msgs/Int16MultiArray input

================================================================================
MSG: std_msgs/Int16MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int16[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
std_msgs/String output

================================================================================
MSG: std_msgs/String
string data
")

(setf (get features::ASRServiceResponse :md5sum-) "e84f65894fbd5cd8d89dc52e87b8854a")
(setf (get features::ASRServiceResponse :datatype-) "features/ASRServiceResponse")
(setf (get features::ASRServiceResponse :definition-)
      "std_msgs/Int16MultiArray input

================================================================================
MSG: std_msgs/Int16MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int16[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
std_msgs/String output

================================================================================
MSG: std_msgs/String
string data
")



(provide :features/ASRService "e84f65894fbd5cd8d89dc52e87b8854a")


