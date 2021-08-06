#include "ros/ros.h"
#include "pluginlib/class_loader.h"
#include "plugin/dbx_base.h"

int main(int argc, char *argv[])
{   
    pluginlib::ClassLoader<dbx_base_ns::Dbx_Base> loader("plugin","dbx_base_ns::Dbx_Base");
    boost::shared_ptr<dbx_base_ns::Dbx_Base> san = loader.createInstance("dbx_plugins_ns::SanBian");

    san->init(10);
    double res = san->getlength();
    ROS_INFO("the result is %.4f", res);    
    return 0;
}
