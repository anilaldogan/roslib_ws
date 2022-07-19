;; Auto-generated. Do not edit!


(when (boundp 'test_roslib::message1)
  (if (not (find-package "TEST_ROSLIB"))
    (make-package "TEST_ROSLIB"))
  (shadow 'message1 (find-package "TEST_ROSLIB")))
(unless (find-package "TEST_ROSLIB::MESSAGE1")
  (make-package "TEST_ROSLIB::MESSAGE1"))

(in-package "ROS")
;;//! \htmlinclude message1.msg.html


(defclass test_roslib::message1
  :super ros::object
  :slots (_robot _x _y _th ))

(defmethod test_roslib::message1
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
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _th
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot
       (write-long (length _robot) s) (princ _robot s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _th
       (sys::poke _th (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _th
     (setq _th (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_roslib::message1 :md5sum-) "dff9bfd755bfc63a3ec938fa82a872cb")
(setf (get test_roslib::message1 :datatype-) "test_roslib/message1")
(setf (get test_roslib::message1 :definition-)
      "string robot
float32 x
float32 y
float32 th
")



(provide :test_roslib/message1 "dff9bfd755bfc63a3ec938fa82a872cb")


