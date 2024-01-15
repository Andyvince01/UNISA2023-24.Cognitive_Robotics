;; Auto-generated. Do not edit!


(when (boundp 'features::WakeUp)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'WakeUp (find-package "FEATURES")))
(unless (find-package "FEATURES::WAKEUP")
  (make-package "FEATURES::WAKEUP"))
(unless (find-package "FEATURES::WAKEUPREQUEST")
  (make-package "FEATURES::WAKEUPREQUEST"))
(unless (find-package "FEATURES::WAKEUPRESPONSE")
  (make-package "FEATURES::WAKEUPRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::WakeUpRequest
  :super ros::object
  :slots ())

(defmethod features::WakeUpRequest
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

(defclass features::WakeUpResponse
  :super ros::object
  :slots (_ack ))

(defmethod features::WakeUpResponse
  (:init
   (&key
    ((:ack __ack) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _ack __ack)
   self)
  (:ack
   (&rest __ack)
   (if (keywordp (car __ack))
       (send* _ack __ack)
     (progn
       (if __ack (setq _ack (car __ack)))
       _ack)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _ack
    (send _ack :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _ack
       (send _ack :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _ack
     (send _ack :deserialize buf ptr-) (incf ptr- (send _ack :serialization-length))
   ;;
   self)
  )

(defclass features::WakeUp
  :super ros::object
  :slots ())

(setf (get features::WakeUp :md5sum-) "92dac20d0566a4f591e3ecd6dcd3458b")
(setf (get features::WakeUp :datatype-) "features/WakeUp")
(setf (get features::WakeUp :request) features::WakeUpRequest)
(setf (get features::WakeUp :response) features::WakeUpResponse)

(defmethod features::WakeUpRequest
  (:response () (instance features::WakeUpResponse :init)))

(setf (get features::WakeUpRequest :md5sum-) "92dac20d0566a4f591e3ecd6dcd3458b")
(setf (get features::WakeUpRequest :datatype-) "features/WakeUpRequest")
(setf (get features::WakeUpRequest :definition-)
      "---
std_msgs/String ack


================================================================================
MSG: std_msgs/String
string data
")

(setf (get features::WakeUpResponse :md5sum-) "92dac20d0566a4f591e3ecd6dcd3458b")
(setf (get features::WakeUpResponse :datatype-) "features/WakeUpResponse")
(setf (get features::WakeUpResponse :definition-)
      "---
std_msgs/String ack


================================================================================
MSG: std_msgs/String
string data
")



(provide :features/WakeUp "92dac20d0566a4f591e3ecd6dcd3458b")


