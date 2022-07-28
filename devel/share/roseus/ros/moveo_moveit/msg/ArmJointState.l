;; Auto-generated. Do not edit!


(when (boundp 'moveo_moveit::ArmJointState)
  (if (not (find-package "MOVEO_MOVEIT"))
    (make-package "MOVEO_MOVEIT"))
  (shadow 'ArmJointState (find-package "MOVEO_MOVEIT")))
(unless (find-package "MOVEO_MOVEIT::ARMJOINTSTATE")
  (make-package "MOVEO_MOVEIT::ARMJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ArmJointState.msg.html


(defclass moveo_moveit::ArmJointState
  :super ros::object
  :slots (_position1 _position2 _position3 _position4 _position5 _position6 ))

(defmethod moveo_moveit::ArmJointState
  (:init
   (&key
    ((:position1 __position1) 0)
    ((:position2 __position2) 0)
    ((:position3 __position3) 0)
    ((:position4 __position4) 0)
    ((:position5 __position5) 0)
    ((:position6 __position6) 0)
    )
   (send-super :init)
   (setq _position1 (round __position1))
   (setq _position2 (round __position2))
   (setq _position3 (round __position3))
   (setq _position4 (round __position4))
   (setq _position5 (round __position5))
   (setq _position6 (round __position6))
   self)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:position3
   (&optional __position3)
   (if __position3 (setq _position3 __position3)) _position3)
  (:position4
   (&optional __position4)
   (if __position4 (setq _position4 __position4)) _position4)
  (:position5
   (&optional __position5)
   (if __position5 (setq _position5 __position5)) _position5)
  (:position6
   (&optional __position6)
   (if __position6 (setq _position6 __position6)) _position6)
  (:serialization-length
   ()
   (+
    ;; int16 _position1
    2
    ;; int16 _position2
    2
    ;; int16 _position3
    2
    ;; int16 _position4
    2
    ;; int16 _position5
    2
    ;; int16 _position6
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _position1
       (write-word _position1 s)
     ;; int16 _position2
       (write-word _position2 s)
     ;; int16 _position3
       (write-word _position3 s)
     ;; int16 _position4
       (write-word _position4 s)
     ;; int16 _position5
       (write-word _position5 s)
     ;; int16 _position6
       (write-word _position6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _position1
     (setq _position1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position2
     (setq _position2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position3
     (setq _position3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position4
     (setq _position4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position5
     (setq _position5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position6
     (setq _position6 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get moveo_moveit::ArmJointState :md5sum-) "7bf56d1cde4c613af8c16b02c640040e")
(setf (get moveo_moveit::ArmJointState :datatype-) "moveo_moveit/ArmJointState")
(setf (get moveo_moveit::ArmJointState :definition-)
      "int16 position1
int16 position2
int16 position3
int16 position4
int16 position5
int16 position6

")



(provide :moveo_moveit/ArmJointState "7bf56d1cde4c613af8c16b02c640040e")


