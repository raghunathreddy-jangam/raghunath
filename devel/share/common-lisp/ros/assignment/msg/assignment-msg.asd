
(cl:in-package :asdf)

(defsystem "assignment-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ultrasound_2" :depends-on ("_package_ultrasound_2"))
    (:file "_package_ultrasound_2" :depends-on ("_package"))
  ))