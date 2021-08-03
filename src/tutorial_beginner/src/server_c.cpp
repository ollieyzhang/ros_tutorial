#include <iostream>

#include "ros/ros.h"
#include "tutorial_beginner/nums.h"

bool add_nums(tutorial_beginner::nums::Request &request,
              tutorial_beginner::nums::Response &response){
    int num1 = request.num1;
    int num2 = request.num2;
    ROS_INFO("request nums: %d, %d", num1, num2);

    int total = num1 + num2;
    response.total = total;
    ROS_INFO("Response is: %d", total);
    return true;
}


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "server_c");
    ros::NodeHandle nodehandle2;
    ros::ServiceServer server = nodehandle2.advertiseService("nums", add_nums);
    
    ros::spin();
    return 0;
}
