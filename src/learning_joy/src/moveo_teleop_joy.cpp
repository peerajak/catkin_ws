#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>


class TeleopMoveo
{
public:
  TeleopMoveo();

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

  ros::NodeHandle nh_;

  int linear1_,linear2_,linear3_;
  int angular1_,angular2_,angular3_;
  double l_scale_=1.0, a_scale_=1.0;
  ros::Publisher vel_pub_;
  ros::Subscriber joy_sub_;

};


TeleopMoveo::TeleopMoveo():
  linear1_(1),
  linear2_(2),
  linear3_(3),
  angular1_(4),
  angular2_(5),
  angular3_(6)
{

  nh_.param("axis_linear1", linear1_, linear1_);
  nh_.param("axis_linear2", linear2_, linear2_);
  nh_.param("axis_linear3", linear3_, linear3_);
  nh_.param("axis_angular1", angular1_, angular1_);
  nh_.param("axis_angular2", angular2_, angular2_);
  nh_.param("axis_angular3", angular3_, angular3_);
  nh_.param("scale_angular", a_scale_, a_scale_);
  nh_.param("scale_linear", l_scale_, l_scale_);


  vel_pub_ = nh_.advertise<geometry_msgs::Twist>("joint_joysteps", 1);


  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 10, &TeleopMoveo::joyCallback, this);

}

void TeleopMoveo::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
  geometry_msgs::Twist twist;
  twist.linear.x = l_scale_*joy->axes[linear1_];
  twist.linear.y = l_scale_*joy->axes[linear2_];
  twist.linear.z = l_scale_*joy->axes[linear3_];
  twist.angular.x = a_scale_*joy->axes[angular1_];
  twist.angular.y = a_scale_*joy->axes[angular2_];
  twist.angular.z = a_scale_*joy->axes[angular3_];
  vel_pub_.publish(twist);
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "teleop_moveo");
  TeleopMoveo teleop_moveo;

  ros::spin();
}
