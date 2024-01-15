;; Auto-generated. Do not edit!


(when (boundp 'features::Rest)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'Rest (find-package "FEATURES")))
(unless (find-package "FEATURES::REST")
  (make-package "FEATURES::REST"))
(unless (find-package "FEATURES::RESTREQUEST")
  (make-package "FEATURES::RESTREQUEST"))
(unless (find-package "FEATURES::RESTRESPONSE")
  (make-package "FEATURES::RESTRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::RestRequest
  :super ros::object
  :slots ())

(defmethod features::RestRequest
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

(defclass features::RestResponse
  :super ros::object
  :slots (_ack ))

(defmethod features::RestResponse
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

(defclass features::Rest
  :super ros::object
  :slots ())

(setf (get features::Rest :md5sum-) "92dac20d0566a4f591e3ecd6dcd3458b")
(setf (get features::Rest :datatype-) "features/Rest")
(setf (get features::Rest :request) features::RestRequest)
(setf (get features::Rest :response) features::RestResponse)

(defmethod features::RestRequest
  (:response () (instance features::RestResponse :init)))

(setf (get features::RestRequest :md5sum-) "92dac20d0566a4f591e3ecd6dcd3458b")
(setf (get features::RestRequest :datatype-) "features/RestRequest")
(setf (get features::RestRequest :definition-)
      "---
std_msgs/String ack


================================================================================
MSG: std_msgs/String
string data
")

(setf (get features::RestResponse :md5sum-) "92dac20d0566a4f591e3ecd6dcd3458b")
(setf (get features::RestResponse :datatype-) "features/RestResponse")
(setf (get features::RestResponse :definition-)
      "---
std_msgs/String ack


================================================================================
MSG: std_msgs/String
string data
")



(provide :features/Rest "92dac20d0566a4f591e3ecd6dcd3458b")


