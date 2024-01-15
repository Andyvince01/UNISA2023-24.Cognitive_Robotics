;; Auto-generated. Do not edit!


(when (boundp 'chatbot::Dialogue)
  (if (not (find-package "CHATBOT"))
    (make-package "CHATBOT"))
  (shadow 'Dialogue (find-package "CHATBOT")))
(unless (find-package "CHATBOT::DIALOGUE")
  (make-package "CHATBOT::DIALOGUE"))
(unless (find-package "CHATBOT::DIALOGUEREQUEST")
  (make-package "CHATBOT::DIALOGUEREQUEST"))
(unless (find-package "CHATBOT::DIALOGUERESPONSE")
  (make-package "CHATBOT::DIALOGUERESPONSE"))

(in-package "ROS")





(defclass chatbot::DialogueRequest
  :super ros::object
  :slots (_input_text ))

(defmethod chatbot::DialogueRequest
  (:init
   (&key
    ((:input_text __input_text) "")
    )
   (send-super :init)
   (setq _input_text (string __input_text))
   self)
  (:input_text
   (&optional __input_text)
   (if __input_text (setq _input_text __input_text)) _input_text)
  (:serialization-length
   ()
   (+
    ;; string _input_text
    4 (length _input_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_text
       (write-long (length _input_text) s) (princ _input_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass chatbot::DialogueResponse
  :super ros::object
  :slots (_answer ))

(defmethod chatbot::DialogueResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass chatbot::Dialogue
  :super ros::object
  :slots ())

(setf (get chatbot::Dialogue :md5sum-) "af708bc8927c16924fd75aabb46f9abb")
(setf (get chatbot::Dialogue :datatype-) "chatbot/Dialogue")
(setf (get chatbot::Dialogue :request) chatbot::DialogueRequest)
(setf (get chatbot::Dialogue :response) chatbot::DialogueResponse)

(defmethod chatbot::DialogueRequest
  (:response () (instance chatbot::DialogueResponse :init)))

(setf (get chatbot::DialogueRequest :md5sum-) "af708bc8927c16924fd75aabb46f9abb")
(setf (get chatbot::DialogueRequest :datatype-) "chatbot/DialogueRequest")
(setf (get chatbot::DialogueRequest :definition-)
      "string input_text
---
string answer
")

(setf (get chatbot::DialogueResponse :md5sum-) "af708bc8927c16924fd75aabb46f9abb")
(setf (get chatbot::DialogueResponse :datatype-) "chatbot/DialogueResponse")
(setf (get chatbot::DialogueResponse :definition-)
      "string input_text
---
string answer
")



(provide :chatbot/Dialogue "af708bc8927c16924fd75aabb46f9abb")


