;; Auto-generated. Do not edit!


(when (boundp 'features::Text2Speech)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'Text2Speech (find-package "FEATURES")))
(unless (find-package "FEATURES::TEXT2SPEECH")
  (make-package "FEATURES::TEXT2SPEECH"))
(unless (find-package "FEATURES::TEXT2SPEECHREQUEST")
  (make-package "FEATURES::TEXT2SPEECHREQUEST"))
(unless (find-package "FEATURES::TEXT2SPEECHRESPONSE")
  (make-package "FEATURES::TEXT2SPEECHRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::Text2SpeechRequest
  :super ros::object
  :slots (_input ))

(defmethod features::Text2SpeechRequest
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

(defclass features::Text2SpeechResponse
  :super ros::object
  :slots (_ack ))

(defmethod features::Text2SpeechResponse
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

(defclass features::Text2Speech
  :super ros::object
  :slots ())

(setf (get features::Text2Speech :md5sum-) "8b55dba5ce52d0e4d2c88f751b201113")
(setf (get features::Text2Speech :datatype-) "features/Text2Speech")
(setf (get features::Text2Speech :request) features::Text2SpeechRequest)
(setf (get features::Text2Speech :response) features::Text2SpeechResponse)

(defmethod features::Text2SpeechRequest
  (:response () (instance features::Text2SpeechResponse :init)))

(setf (get features::Text2SpeechRequest :md5sum-) "8b55dba5ce52d0e4d2c88f751b201113")
(setf (get features::Text2SpeechRequest :datatype-) "features/Text2SpeechRequest")
(setf (get features::Text2SpeechRequest :definition-)
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

(setf (get features::Text2SpeechResponse :md5sum-) "8b55dba5ce52d0e4d2c88f751b201113")
(setf (get features::Text2SpeechResponse :datatype-) "features/Text2SpeechResponse")
(setf (get features::Text2SpeechResponse :definition-)
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



(provide :features/Text2Speech "8b55dba5ce52d0e4d2c88f751b201113")


