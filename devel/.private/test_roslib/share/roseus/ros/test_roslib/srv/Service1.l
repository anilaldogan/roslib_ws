;; Auto-generated. Do not edit!


(when (boundp 'test_roslib::Service1)
  (if (not (find-package "TEST_ROSLIB"))
    (make-package "TEST_ROSLIB"))
  (shadow 'Service1 (find-package "TEST_ROSLIB")))
(unless (find-package "TEST_ROSLIB::SERVICE1")
  (make-package "TEST_ROSLIB::SERVICE1"))
(unless (find-package "TEST_ROSLIB::SERVICE1REQUEST")
  (make-package "TEST_ROSLIB::SERVICE1REQUEST"))
(unless (find-package "TEST_ROSLIB::SERVICE1RESPONSE")
  (make-package "TEST_ROSLIB::SERVICE1RESPONSE"))

(in-package "ROS")





(defclass test_roslib::Service1Request
  :super ros::object
  :slots (_robot _x _y _th ))

(defmethod test_roslib::Service1Request
  (:init
   (&key
    ((:robot __robot) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:th __th) 0.0)
    )
   (send-super :init)
   (setq _robot (string __robot))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _th (float __th))
   self)
  (:robot
   (&optional __robot)
   (if __robot (setq _robot __robot)) _robot)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:th
   (&optional __th)
   (if __th (setq _th __th)) _th)
  (:serialization-length
   ()
   (+
    ;; string _robot
    4 (length _robot)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _th
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot
       (write-long (length _robot) s) (princ _robot s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th
       (sys::poke _th (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th
     (setq _th (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test_roslib::Service1Response
  :super ros::object
  :slots (_success ))

(defmethod test_roslib::Service1Response
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass test_roslib::Service1
  :super ros::object
  :slots ())

(setf (get test_roslib::Service1 :md5sum-) "491e0a0c037dc07b80d48fdfeb4011a1")
(setf (get test_roslib::Service1 :datatype-) "test_roslib/Service1")
(setf (get test_roslib::Service1 :request) test_roslib::Service1Request)
(setf (get test_roslib::Service1 :response) test_roslib::Service1Response)

(defmethod test_roslib::Service1Request
  (:response () (instance test_roslib::Service1Response :init)))

(setf (get test_roslib::Service1Request :md5sum-) "491e0a0c037dc07b80d48fdfeb4011a1")
(setf (get test_roslib::Service1Request :datatype-) "test_roslib/Service1Request")
(setf (get test_roslib::Service1Request :definition-)
      "string robot
float64 x
float64 y
float64 th
---
bool success
")

(setf (get test_roslib::Service1Response :md5sum-) "491e0a0c037dc07b80d48fdfeb4011a1")
(setf (get test_roslib::Service1Response :datatype-) "test_roslib/Service1Response")
(setf (get test_roslib::Service1Response :definition-)
      "string robot
float64 x
float64 y
float64 th
---
bool success
")



(provide :test_roslib/Service1 "491e0a0c037dc07b80d48fdfeb4011a1")


