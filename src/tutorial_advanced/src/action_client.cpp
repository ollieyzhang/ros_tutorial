#include "ros/ros.h"
#include "actionlib/client/simple_action_client.h"
#include "tutorial_advanced/addintsAction.h"

typedef actionlib::SimpleActionClient<tutorial_advanced::addintsAction> Client;

void done_callback(const actionlib::SimpleClientGoalState &state,
                const tutorial_advanced::addintsResultConstPtr &result)
{
    if (state.state_ == state.SUCCEEDED)
    {
        ROS_INFO("Success, result is %d ", result->goal);
    }
    else ROS_INFO("Fail");
}

void active_callback()
{
    ROS_INFO("active");
}

void feedback_callback(const tutorial_advanced::addintsFeedbackConstPtr &feedback)
{
    ROS_INFO("process bar: %.2f ", feedback->process_bar);
}


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "action_client");
    ros::NodeHandle nh;
    Client client(nh, "addints");
    client.waitForServer();
    tutorial_advanced::addintsGoal goal;
    goal.num = 500;

    client.sendGoal(goal, &done_callback, &active_callback, &feedback_callback);
    ros::spin();
    return 0;
}
