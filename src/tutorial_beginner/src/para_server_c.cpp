#include <iostream>
#include "ros/ros.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "parameters_server");
    ros::NodeHandle nodehandle;

    nodehandle.setParam("name","Yan");

    ros::param::set("age", 12);
    // int age = nodehandle.param("age", 23);
    // int age = 10;
    // bool flag = nodehandle.getParam("age", age);           
    return 0;
}
