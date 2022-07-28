; Auto-generated. Do not edit!


(cl:in-package moveo_moveit-msg)


;//! \htmlinclude ArmJointState.msg.html

(cl:defclass <ArmJointState> (roslisp-msg-protocol:ros-message)
  ((position1
    :reader position1
    :initarg :position1
    :type cl:fixnum
    :initform 0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:fixnum
    :initform 0)
   (position3
    :reader position3
    :initarg :position3
    :type cl:fixnum
    :initform 0)
   (position4
    :reader position4
    :initarg :position4
    :type cl:fixnum
    :initform 0)
   (position5
    :reader position5
    :initarg :position5
    :type cl:fixnum
    :initform 0)
   (position6
    :reader position6
    :initarg :position6
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArmJointState (<ArmJointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmJointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmJointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveo_moveit-msg:<ArmJointState> is deprecated: use moveo_moveit-msg:ArmJointState instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveo_moveit-msg:position1-val is deprecated.  Use moveo_moveit-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveo_moveit-msg:position2-val is deprecated.  Use moveo_moveit-msg:position2 instead.")
  (position2 m))

(cl:ensure-generic-function 'position3-val :lambda-list '(m))
(cl:defmethod position3-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveo_moveit-msg:position3-val is deprecated.  Use moveo_moveit-msg:position3 instead.")
  (position3 m))

(cl:ensure-generic-function 'position4-val :lambda-list '(m))
(cl:defmethod position4-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveo_moveit-msg:position4-val is deprecated.  Use moveo_moveit-msg:position4 instead.")
  (position4 m))

(cl:ensure-generic-function 'position5-val :lambda-list '(m))
(cl:defmethod position5-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveo_moveit-msg:position5-val is deprecated.  Use moveo_moveit-msg:position5 instead.")
  (position5 m))

(cl:ensure-generic-function 'position6-val :lambda-list '(m))
(cl:defmethod position6-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveo_moveit-msg:position6-val is deprecated.  Use moveo_moveit-msg:position6 instead.")
  (position6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmJointState>) ostream)
  "Serializes a message object of type '<ArmJointState>"
  (cl:let* ((signed (cl:slot-value msg 'position1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmJointState>) istream)
  "Deserializes a message object of type '<ArmJointState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position4) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position5) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position6) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmJointState>)))
  "Returns string type for a message object of type '<ArmJointState>"
  "moveo_moveit/ArmJointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmJointState)))
  "Returns string type for a message object of type 'ArmJointState"
  "moveo_moveit/ArmJointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmJointState>)))
  "Returns md5sum for a message object of type '<ArmJointState>"
  "7bf56d1cde4c613af8c16b02c640040e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmJointState)))
  "Returns md5sum for a message object of type 'ArmJointState"
  "7bf56d1cde4c613af8c16b02c640040e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmJointState>)))
  "Returns full string definition for message of type '<ArmJointState>"
  (cl:format cl:nil "int16 position1~%int16 position2~%int16 position3~%int16 position4~%int16 position5~%int16 position6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmJointState)))
  "Returns full string definition for message of type 'ArmJointState"
  (cl:format cl:nil "int16 position1~%int16 position2~%int16 position3~%int16 position4~%int16 position5~%int16 position6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmJointState>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmJointState>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmJointState
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
    (cl:cons ':position3 (position3 msg))
    (cl:cons ':position4 (position4 msg))
    (cl:cons ':position5 (position5 msg))
    (cl:cons ':position6 (position6 msg))
))
