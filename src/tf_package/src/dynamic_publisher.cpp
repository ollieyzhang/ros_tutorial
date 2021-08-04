#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "tf2_ros/transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"


void pose_callback(const turtlesim::Pose::ConstPtr& msg)
{
    static tf2_ros::TransformBroadcaster pub;
    geometry_msgs::TransformStamped ts;
    
    ts.header.frame_id = "world";
    ts.header.stamp = ros::Time::now();
    ts.child_frame_id = "turtle1";

    ts.transform.translation.x = msg->x;
    ts.transform.translation.y = msg->y;
    ts.transform.translation.z = 0.0;

    tf2::Quaternion qtn;
    qtn.setEuler(0.0, 0.0, msg->theta);

    ts.transform.rotation.x = qtn.getX();
    ts.transform.rotation.y = qtn.getY();
    ts.transform.rotation.z = qtn.getZ();
    ts.transform.rotation.w = qtn.getW();

    pub.sendTransform(ts);

}


int main(int argc, char  *argv[])
{
    ros::init(argc, argv, "dynamic_pub");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("/turtle1/pose", 100, pose_callback);
    ros::spin();
    return 0;
}
