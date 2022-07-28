#!/bin/bash
# This file tell how to submit a massage to a topic and send it to move motor
#compile and upload moveo_moveit_arduino.ino
#roscore
#rosrun rosserial_python serial_node.py /dev/ttyUSB0
#rostopic echo joint_steps
#rostopic echo joint_steps_feedback
#./pubarm.sh
while true
do
for i in {0..9900..200}
do
   rostopic pub -1  /joint_steps moveo_moveit/ArmJointState "{position1: 0, position2: 0, position3: $i, position4: $i, position5: 0, position6: 0}"
   echo rostopic pub -1  /joint_steps moveo_moveit/ArmJointState "{position1: 0, position2: 0, position3: $i, position4: $i, position5: 0, position6: 0}"

done
done
