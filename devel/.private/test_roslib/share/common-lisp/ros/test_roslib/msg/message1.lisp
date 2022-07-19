; Auto-generated. Do not edit!


(cl:in-package test_roslib-msg)


;//! \htmlinclude message1.msg.html

(cl:defclass <message1> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (th
    :reader th
    :initarg :th
    :type cl:float
    :initform 0.0))
)

(cl:defclass message1 (<message1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <message1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'message1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib-msg:<message1> is deprecated: use test_roslib-msg:message1 instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-msg:robot-val is deprecated.  Use test_roslib-msg:robot instead.")
  (robot m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-msg:x-val is deprecated.  Use test_roslib-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-msg:y-val is deprecated.  Use test_roslib-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'th-val :lambda-list '(m))
(cl:defmethod th-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-msg:th-val is deprecated.  Use test_roslib-msg:th instead.")
  (th m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <message1>) ostream)
  "Serializes a message object of type '<message1>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <message1>) istream)
  "Deserializes a message object of type '<message1>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<message1>)))
  "Returns string type for a message object of type '<message1>"
  "test_roslib/message1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'message1)))
  "Returns string type for a message object of type 'message1"
  "test_roslib/message1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<message1>)))
  "Returns md5sum for a message object of type '<message1>"
  "dff9bfd755bfc63a3ec938fa82a872cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'message1)))
  "Returns md5sum for a message object of type 'message1"
  "dff9bfd755bfc63a3ec938fa82a872cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<message1>)))
  "Returns full string definition for message of type '<message1>"
  (cl:format cl:nil "string robot~%float32 x~%float32 y~%float32 th~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'message1)))
  "Returns full string definition for message of type 'message1"
  (cl:format cl:nil "string robot~%float32 x~%float32 y~%float32 th~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <message1>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <message1>))
  "Converts a ROS message object to a list"
  (cl:list 'message1
    (cl:cons ':robot (robot msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':th (th msg))
))
