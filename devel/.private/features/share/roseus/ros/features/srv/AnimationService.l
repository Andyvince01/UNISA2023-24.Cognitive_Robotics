;; Auto-generated. Do not edit!


(when (boundp 'features::AnimationService)
  (if (not (find-package "FEATURES"))
    (make-package "FEATURES"))
  (shadow 'AnimationService (find-package "FEATURES")))
(unless (find-package "FEATURES::ANIMATIONSERVICE")
  (make-package "FEATURES::ANIMATIONSERVICE"))
(unless (find-package "FEATURES::ANIMATIONSERVICEREQUEST")
  (make-package "FEATURES::ANIMATIONSERVICEREQUEST"))
(unless (find-package "FEATURES::ANIMATIONSERVICERESPONSE")
  (make-package "FEATURES::ANIMATIONSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass features::AnimationServiceRequest
  :super ros::object
  :slots (_input ))

(defmethod features::AnimationServiceRequest
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

(defclass features::AnimationServiceResponse
  :super ros::object
  :slots (_output ))

(defmethod features::AnimationServiceResponse
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

(defclass features::AnimationService
  :super ros::object
  :slots ())

(setf (get features::AnimationService :md5sum-) "d8b7e9905e6a815639dc67959117aa3b")
(setf (get features::AnimationService :datatype-) "features/AnimationService")
(setf (get features::AnimationService :request) features::AnimationServiceRequest)
(setf (get features::AnimationService :response) features::AnimationServiceResponse)

(defmethod features::AnimationServiceRequest
  (:response () (instance features::AnimationServiceResponse :init)))

(setf (get features::AnimationServiceRequest :md5sum-) "d8b7e9905e6a815639dc67959117aa3b")
(setf (get features::AnimationServiceRequest :datatype-) "features/AnimationServiceRequest")
(setf (get features::AnimationServiceRequest :definition-)
      "std_msgs/String input

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String output

================================================================================
MSG: std_msgs/String
string data
")

(setf (get features::AnimationServiceResponse :md5sum-) "d8b7e9905e6a815639dc67959117aa3b")
(setf (get features::AnimationServiceResponse :datatype-) "features/AnimationServiceResponse")
(setf (get features::AnimationServiceResponse :definition-)
      "std_msgs/String input

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String output

================================================================================
MSG: std_msgs/String
string data
")



(provide :features/AnimationService "d8b7e9905e6a815639dc67959117aa3b")


