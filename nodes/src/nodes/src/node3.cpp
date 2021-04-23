#include "ros/ros.h"
// necessary header file for creating a node

#include "std_msgs/String.h"
// necessary for logging a string

std_msgs::String __msg1, __msg2;

void callback1(const std_msgs::String::ConstPtr& _msg1)
{
    __msg1 = *_msg1;
    // assign the message sent on the topic /team_abhiyaan to the global variable __msg1

    return;
}

void callback2(const std_msgs::String::ConstPtr& _msg2)
{
    if (__msg1.data.size() == 0 || _msg2->data.size() == 0)
    {
        return;
        // if _msg1 or _msg2 has not been received yet, don't continue the loop
    }

    ROS_INFO("%s %s", __msg1.data.c_str(), _msg2->data.c_str());
    // print the concatened strings to stdout

    return;
}


int main(int argc, char* argv[])
{
    ros::init(argc, argv, "node3");
    // initialize the ROS node (name is "node3")
    // and pass the command line arguments to perform any other tasks as indicated by those arguments

    ros::NodeHandle node3;
    // initialize the NodeHandle, which is the main access point for all the communications with the ROS system

    ros::Subscriber sub3 = node3.subscribe("/team_abhiyaan", 1000, callback1);
    // subscribe to the topic `/team_abhiyaan`; queue size is 1000 messages; and callback function is callback1

    ros::Subscriber sub3_ = node3.subscribe("/autonomy", 1000, callback2);
    // subscribe to the topic `/autonomy`; queue size is 1000 messages; and callback function is callback2
    
    ros::spin();
    // enter the even loop and process the callbacks

    return 0;
    // return successfully
}