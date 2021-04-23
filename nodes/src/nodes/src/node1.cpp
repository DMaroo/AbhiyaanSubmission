#include "ros/ros.h"
// necessary header file for creating a node

#include "std_msgs/String.h"
// necessary for publishing a string

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "node1");
    // initialize the ROS node (name is "node1")
    // and pass the command line arguments to perform any other tasks as indicated by those arguments

    ros::NodeHandle node1;
    // initialize the NodeHandle, which is the main access point for all the communications with the ROS system

    ros::Publisher pub1 = node1.advertise<std_msgs::String>("/team_abhiyaan", 1000);
    // this function informs ROS that this node intends to publish on the topic /team_abhiyaan
    // the second argument of the `advertise` function is essentially the size of the buffer

    ros::Rate rate1(10);
    // the rate at which the messages are being published, i.e. the frequency. In this case it is 10Hz

    while (ros::ok()) // check whether the node is alive
    {
        std_msgs::String msg1;

        msg1.data = "Team Abhiyaan:";
        // assigning the message to msg1

        pub1.publish(msg1);
        // publish the message

        ros::spinOnce();
        // process callbacks

        rate1.sleep();
        // sleep until the time for next publish arrives
    }

    return 0;
    // return successfully
}