#include "ros/ros.h"
// necessary header file for creating a node

#include "std_msgs/String.h"
// necessary for publishing a string

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "node2");
    // initialize the ROS node (name is "node2")
    // and pass the command line arguments to perform any other tasks as indicated by those arguments

    ros::NodeHandle node2;
    // initialize the NodeHandle, which is the main access point for all the communications with the ROS system

    ros::Publisher pub2 = node2.advertise<std_msgs::String>("/autonomy", 1000);
    // this function informs ROS that this node intends to publish on the topic /autonomy
    // the second argument of the `advertise` function is essentially the size of the buffer

    ros::Rate rate2(10);
    // the rate at which the messages are being published, i.e. the frequency. In this case it is 10Hz

    while (ros::ok()) // check whether the node is alive
    {
        std_msgs::String msg2;

        msg2.data = "Fueled By Autonomy";
        // assigning the message to msg2

        pub2.publish(msg2);
        // publish the message

        ros::spinOnce();
        // process callbacks

        rate2.sleep();
        // sleep until the time for next publish arrives
    }

    return 0;
    // return successfully
}