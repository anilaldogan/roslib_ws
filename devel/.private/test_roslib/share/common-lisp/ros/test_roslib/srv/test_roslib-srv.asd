
(cl:in-package :asdf)

(defsystem "test_roslib-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Service1" :depends-on ("_package_Service1"))
    (:file "_package_Service1" :depends-on ("_package"))
  ))