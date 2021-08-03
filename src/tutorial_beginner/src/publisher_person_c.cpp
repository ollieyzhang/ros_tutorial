#include<iostream>
#include <sstream>

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "tutorial_beginner/person.h"

using namespace std;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "publisher_person_c");
    ros::NodeHandle node_handle;
    ros::Publisher talker = node_handle.advertise<tutorial_beginner::person>("person", 10);
    ros::Rate loop_rate(1);
    tutorial_beginner::person msg;
    msg.name = "Yan";
    msg.age = 23;
    msg.height = 1.7;

    // 防止订阅的时候因为publisher注册时差导致前面几条数据丢失
    ros::Duration(3).sleep();
    while (ros::ok()){
        msg.age++;
        stringstream ss;
        ss << "Yan's age is  --> " << msg.age;
        talker.publish(msg);
        ROS_INFO("Message: %s", ss.str().c_str());
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
