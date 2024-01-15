;; Auto-generated. Do not edit!


(when (boundp 'features::TabletService)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'TabletService (find-package "FEATURES")))
(unless (find-package "FEATURES::TABLETSERVICE")
  (make-package "FEATURES::TABLETSERVICE"))
(unless (find-package "FEATURES::TABLETSERVICEREQUEST")
  (make-package "FEATURES::TABLETSERVICEREQUEST"))
(unless (find-package "FEATURES::TABLETSERVICERESPONSE")
  (make-package "FEATURES::TABLETSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::TabletServiceRequest
  :super ros::object
  :slots (_input ))

(defmethod features::TabletServiceRequest
  (:init
   (&key
    ((:input __input) (instance std_msgs::String :init))
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
    ;; std_msgs/String _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass features::TabletServiceResponse
  :super ros::object
  :slots (_ack ))

(defmethod features::TabletServiceResponse
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

(defclass features::TabletService
  :super ros::object
  :slots ())

(setf (get features::TabletService :md5sum-) "8b55dba5ce52d0e4d2c88f751b201113")
(setf (get features::TabletService :datatype-) "features/TabletService")
(setf (get features::TabletService :request) features::TabletServiceRequest)
(setf (get features::TabletService :response) features::TabletServiceResponse)

(defmethod features::TabletServiceRequest
  (:response () (instance features::TabletServiceResponse :init)))

(setf (get features::TabletServiceRequest :md5sum-) "8b55dba5ce52d0e4d2c88f751b201113")
(setf (get features::TabletServiceRequest :datatype-) "features/TabletServiceRequest")
(setf (get features::TabletServiceRequest :definition-)
      "std_msgs/String input

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String ack

================================================================================
MSG: std_msgs/String
string data
")

(setf (get features::TabletServiceResponse :md5sum-) "8b55dba5ce52d0e4d2c88f751b201113")
(setf (get features::TabletServiceResponse :datatype-) "features/TabletServiceResponse")
(setf (get features::TabletServiceResponse :definition-)
      "std_msgs/String input

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String ack

================================================================================
MSG: std_msgs/String
string data
")



(provide :features/TabletService "8b55dba5ce52d0e4d2c88f751b201113")


