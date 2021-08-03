#include <iostream>

#include "ros/ros.h"
#include "tutorial_beginner/nums.h"


int main(int argc, char *argv[])
{   
    if (argc !=3){
        ROS_INFO("Wrong command");
        return -1;
    }
    ros::init(argc, argv, "client_c");
    ros::NodeHandle nodehandle;
    ros::ServiceClient client = nodehandle.serviceClient<tutorial_beginner::nums>("nums");
    
    tutorial_beginner::nums nums;
    nums.request.num1 = atoi(argv[1]);
    nums.request.num2 = atoi(argv[2]);
    bool flag = client.call(nums);
    if (flag)
    {
        ROS_INFO("Success");
        ROS_INFO("Response is: %d", nums.response.total);
    }
    else ROS_INFO("Fail");
    return 0;
}
