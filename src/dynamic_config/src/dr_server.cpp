#include "ros/ros.h"
#include "dynamic_reconfigure/server.h"
#include "dynamic_config/drConfig.h"

void cb(dynamic_config::drConfig &config, uint32_t level)
{
    ROS_INFO("new parameters is: %d", config.init_param);
}


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "dr_server");
    dynamic_reconfigure::Server<dynamic_config::drConfig> server;

    server.setCallback(boost::bind(&cb, _1, _2));
    ros::spin();
    return 0;
}
