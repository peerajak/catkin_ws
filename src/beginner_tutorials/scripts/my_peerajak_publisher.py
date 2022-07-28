#!/usr/bin/env python

import rospy
from std_msgs.msg import String

if __name__ == '__main__':
    rospy.init_node('my_peerajak_publisher')
    pub = rospy.Publisher('/peerajak_publisher',String, queue_size=10)
    rate = rospy.Rate(2)
    while not rospy.is_shutdown():
        msg = String()
        msg.data = "Hi This is Peerajak's broadcasting"
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo("Node exit")
