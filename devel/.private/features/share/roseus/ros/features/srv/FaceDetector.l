;; Auto-generated. Do not edit!


(when (boundp 'features::FaceDetector)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'FaceDetector (find-package "FEATURES")))
(unless (find-package "FEATURES::FACEDETECTOR")
  (make-package "FEATURES::FACEDETECTOR"))
(unless (find-package "FEATURES::FACEDETECTORREQUEST")
  (make-package "FEATURES::FACEDETECTORREQUEST"))
(unless (find-package "FEATURES::FACEDETECTORRESPONSE")
  (make-package "FEATURES::FACEDETECTORRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::FaceDetectorRequest
  :super ros::object
  :slots ())

(defmethod features::FaceDetectorRequest
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

(defclass features::FaceDetectorResponse
  :super ros::object
  :slots (_presence ))

(defmethod features::FaceDetectorResponse
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

(defclass features::FaceDetector
  :super ros::object
  :slots ())

(setf (get features::FaceDetector :md5sum-) "c02e001e41cea4c43b2f6bd8b43a538c")
(setf (get features::FaceDetector :datatype-) "features/FaceDetector")
(setf (get features::FaceDetector :request) features::FaceDetectorRequest)
(setf (get features::FaceDetector :response) features::FaceDetectorResponse)

(defmethod features::FaceDetectorRequest
  (:response () (instance features::FaceDetectorResponse :init)))

(setf (get features::FaceDetectorRequest :md5sum-) "c02e001e41cea4c43b2f6bd8b43a538c")
(setf (get features::FaceDetectorRequest :datatype-) "features/FaceDetectorRequest")
(setf (get features::FaceDetectorRequest :definition-)
      "---
std_msgs/Bool presence

================================================================================
MSG: std_msgs/Bool
")

(setf (get features::FaceDetectorResponse :md5sum-) "c02e001e41cea4c43b2f6bd8b43a538c")
(setf (get features::FaceDetectorResponse :datatype-) "features/FaceDetectorResponse")
(setf (get features::FaceDetectorResponse :definition-)
      "---
std_msgs/Bool presence

================================================================================
MSG: std_msgs/Bool
")



(provide :features/FaceDetector "c02e001e41cea4c43b2f6bd8b43a538c")


