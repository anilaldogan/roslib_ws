
(cl:in-package :asdf)

(defsystem "test_roslib-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "message1" :depends-on ("_package_message1"))
    (:file "_package_message1" :depends-on ("_package"))
  ))