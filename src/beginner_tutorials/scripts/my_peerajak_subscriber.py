#!/usr/bin/env python

import rospy
from std_msgs.msg import String
def callback_received_data(msg):
    rospy.loginfo("Message received:")
    rospy.loginfo(msg)

if __name__ == '__main__':
    rospy.init_node('peerajak_listener')
    sub = rospy.Subscriber('/peerajak_publisher',String,callback_received_data)
    rospy.spin()
