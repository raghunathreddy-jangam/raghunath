; Auto-generated. Do not edit!


(cl:in-package assignment-msg)


;//! \htmlinclude ultrasound_2.msg.html

(cl:defclass <ultrasound_2> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type cl:string
    :initform "")
   (a
    :reader a
    :initarg :a
    :type cl:string
    :initform ""))
)

(cl:defclass ultrasound_2 (<ultrasound_2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasound_2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasound_2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment-msg:<ultrasound_2> is deprecated: use assignment-msg:ultrasound_2 instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <ultrasound_2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment-msg:b-val is deprecated.  Use assignment-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <ultrasound_2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment-msg:a-val is deprecated.  Use assignment-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasound_2>) ostream)
  "Serializes a message object of type '<ultrasound_2>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'b))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasound_2>) istream)
  "Deserializes a message object of type '<ultrasound_2>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'b) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'a) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasound_2>)))
  "Returns string type for a message object of type '<ultrasound_2>"
  "assignment/ultrasound_2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasound_2)))
  "Returns string type for a message object of type 'ultrasound_2"
  "assignment/ultrasound_2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasound_2>)))
  "Returns md5sum for a message object of type '<ultrasound_2>"
  "6903e7caf1ccb729fc400b6c391325a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasound_2)))
  "Returns md5sum for a message object of type 'ultrasound_2"
  "6903e7caf1ccb729fc400b6c391325a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasound_2>)))
  "Returns full string definition for message of type '<ultrasound_2>"
  (cl:format cl:nil "string b~%string a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasound_2)))
  "Returns full string definition for message of type 'ultrasound_2"
  (cl:format cl:nil "string b~%string a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasound_2>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'b))
     4 (cl:length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasound_2>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasound_2
    (cl:cons ':b (b msg))
    (cl:cons ':a (a msg))
))
