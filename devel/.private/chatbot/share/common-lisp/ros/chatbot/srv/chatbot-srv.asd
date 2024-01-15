
(cl:in-package :asdf)

(defsystem "chatbot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Dialogue" :depends-on ("_package_Dialogue"))
    (:file "_package_Dialogue" :depends-on ("_package"))
  ))