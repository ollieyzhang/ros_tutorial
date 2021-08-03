#include "ros/ros.h"
#include "std_msgs/String.h"

void msg_callback(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("I heard: %s", msg->data.c_str());
}
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "listener_c");
    ros::NodeHandle node_handle2;
    ros::Subscriber listener = node_handle2.subscribe("word_c", 10, msg_callback);
    ros::Rate loop_rate(10);
    
    ros::spin();
    return 0;
}