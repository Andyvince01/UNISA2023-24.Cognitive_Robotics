;; Auto-generated. Do not edit!


(when (boundp 'features::FaceDetectorService)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'FaceDetectorService (find-package "FEATURES")))
(unless (find-package "FEATURES::FACEDETECTORSERVICE")
  (make-package "FEATURES::FACEDETECTORSERVICE"))
(unless (find-package "FEATURES::FACEDETECTORSERVICEREQUEST")
  (make-package "FEATURES::FACEDETECTORSERVICEREQUEST"))
(unless (find-package "FEATURES::FACEDETECTORSERVICERESPONSE")
  (make-package "FEATURES::FACEDETECTORSERVICERESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::FaceDetectorServiceRequest
  :super ros::object
  :slots ())

(defmethod features::FaceDetectorServiceRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass features::FaceDetectorServiceResponse
  :super ros::object
  :slots (_presence ))

(defmethod features::FaceDetectorServiceResponse
  (:init
   (&key
    ((:presence __presence) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _presence __presence)
   self)
  (:presence
   (&rest __presence)
   (if (keywordp (car __presence))
       (send* _presence __presence)
     (progn
       (if __presence (setq _presence (car __presence)))
       _presence)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _presence
    (send _presence :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _presence
       (send _presence :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _presence
     (send _presence :deserialize buf ptr-) (incf ptr- (send _presence :serialization-length))
   ;;
   self)
  )

(defclass features::FaceDetectorService
  :super ros::object
  :slots ())

(setf (get features::FaceDetectorService :md5sum-) "c02e001e41cea4c43b2f6bd8b43a538c")
(setf (get features::FaceDetectorService :datatype-) "features/FaceDetectorService")
(setf (get features::FaceDetectorService :request) features::FaceDetectorServiceRequest)
(setf (get features::FaceDetectorService :response) features::FaceDetectorServiceResponse)

(defmethod features::FaceDetectorServiceRequest
  (:response () (instance features::FaceDetectorServiceResponse :init)))

(setf (get features::FaceDetectorServiceRequest :md5sum-) "c02e001e41cea4c43b2f6bd8b43a538c")
(setf (get features::FaceDetectorServiceRequest :datatype-) "features/FaceDetectorServiceRequest")
(setf (get features::FaceDetectorServiceRequest :definition-)
      "---
std_msgs/Bool presence

================================================================================
MSG: std_msgs/Bool
")

(setf (get features::FaceDetectorServiceResponse :md5sum-) "c02e001e41cea4c43b2f6bd8b43a538c")
(setf (get features::FaceDetectorServiceResponse :datatype-) "features/FaceDetectorServiceResponse")
(setf (get features::FaceDetectorServiceResponse :definition-)
      "---
std_msgs/Bool presence

================================================================================
MSG: std_msgs/Bool
")



(provide :features/FaceDetectorService "c02e001e41cea4c43b2f6bd8b43a538c")


