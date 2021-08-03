#include<iostream>

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

using namespace std;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "publisher_c");
    ros::NodeHandle node_handle;
    ros::Publisher talker = node_handle.advertise<std_msgs::String>("cpp_topic", 10);
    ros::Rate loop_rate(10);
    std_msgs::String msg;

    int count = 0;
    // 防止订阅的时候因为publisher注册时差导致前面几条数据丢失
    ros::Duration(3).sleep();
    while (ros::ok()){
        count++;
        stringstream ss;
        ss << "Hello --> " << count;
        msg.data = ss.str();
        talker.publish(msg);
        ROS_INFO("Message: %s", ss.str().c_str());
        loop_rate.sleep();
    }

    
    return 0;
}
