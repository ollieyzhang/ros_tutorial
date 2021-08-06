#include "ros/ros.h"
#include "actionlib/server/simple_action_server.h"
#include "tutorial_advanced/addintsAction.h"

typedef actionlib::SimpleActionServer<tutorial_advanced::addintsAction> Server;

void callback(const tutorial_advanced::addintsGoalConstPtr& goal_ptr,
            Server* server)
{
    int goal = goal_ptr->num;
    ros::Rate rate(10);
    int total = 0;
    for (int i = 1; i <= goal; i++)
    {
        total += i;
        rate.sleep();
        tutorial_advanced::addintsFeedback fb;
        fb.process_bar = i / (double)goal;
        server->publishFeedback(fb);
    }
    tutorial_advanced::addintsResult result;
    result.goal = total;
    server->setSucceeded(result);
}


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "action_server");
    ros::NodeHandle nh;
    Server server(nh, "addints", boost::bind(&callback, _1, &server), false);
    server.start();
    ros::spin();
    return 0;
}
