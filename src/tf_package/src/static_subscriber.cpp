#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h" // necessary for using buffer.transform()

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "static_sub");
    ros::NodeHandle nh;
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener sub(buffer);
    geometry_msgs::PointStamped ps;
    ps.header.stamp = ros::Time::now();
    ps.header.frame_id = "laser";

    ps.point.x = 2.0;
    ps.point.y = 3.0;
    ps.point.z = 5.0;
    
    // ros::Duration(2).sleep();
    ros::Rate rate(1);
    while (ros::ok())
    {
        try
        {
        geometry_msgs::PointStamped ps_out = buffer.transform(ps, "base_link");
        ROS_INFO("transformed coordinate points: %.2f, %.2f, %.2f",
                ps_out.point.x, ps_out.point.y, ps_out.point.z
                );
        rate.sleep();
        ros::spinOnce();
        }
        catch(const std::exception& e)
        {
            std::cerr << e.what() << '\n';
        }
    }
    return 0;
}
