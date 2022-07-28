#!/bin/bash
# This file tell how to use joystick to move robot arm
#compile and upload moveo_joy_arduino.ino
#roscore
#### to arduino #### 
#rosrun rosserial_python serial_node.py /dev/ttyUSB0
###  inter operbility between joystick and arduino
#roslaunch learning_joy moveo_joy.launch 
#### joystick #####
#rosparam set joy_node/dev "/dev/input/js0"
#rosrun joy joy_node
#rostopic echo joint_joysteps
#rostopic echo joint_joysteps_feedback
#### Now move your joystick buttons #####


# New Version!
roslaunch learning_joy moveo_joy.launch
