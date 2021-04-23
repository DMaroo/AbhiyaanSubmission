#include "ros/ros.h"
// required to use ROS nodes

#include "geometry_msgs/Twist.h"
// to use the Twist data type to publish to /turtle2/cmd_vel

#include "turtlesim/Pose.h"
// to subscribe and get the position from /turtle1/Pose and /turtle2/Pose

ros::Publisher vel_pub;
// global variable for publishing inside the subscriber callback function

turtlesim::Pose pos1;
// global Pose variable for position of turtle 1, so that it can be accessed t=in the subscriber callback

void t1_callback(const turtlesim::Pose::ConstPtr&);
// callback for subscribing to /turtle1/Pose

void t2_callback(const turtlesim::Pose::ConstPtr&);
// callback for subscribing to /turtle2/Pose

int main(int argc, char* argv[])
{
    pos1.x = 1e9;
    pos1.y = 1e9;
    pos1.theta = 1e9;
    // initializing pos1 to impossible values to allow for checking whether t1_callback is called before t2_callback or not

    ros::init(argc, argv, "maneuver");
    // initialising the node maneuver

    ros::NodeHandle t_sim;
    // creating the NodeHandle

    ros::Rate rate(2);
    // rate set to 2Hz

    vel_pub = t_sim.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel", 1000);
    // advertise on the topic /turtle1/cmd_vel

    ros::Subscriber t1 = t_sim.subscribe("/turtle1/pose", 1000, t1_callback);
    // subscribe to receive the pose of turtle1

    ros::Subscriber t2 = t_sim.subscribe("/turtle2/pose", 1000, t2_callback);
    // subscribe to receive the pose of turtle2

    rate.sleep();
    // sleep to stay in sync with the rate of 2Hz

    ros::spin();
    // keep processing callbacks
}

void t1_callback(const turtlesim::Pose::ConstPtr& _pos1)
{
    pos1 = *_pos1;
    // assign the value of turtle1's pose to pos1
}

void t2_callback(const turtlesim::Pose::ConstPtr& _pos2)
{
    geometry_msgs::Twist twist_pub;
    // create a Twist variable, which will subsequently be published to /turtle2/cmd_vel

    twist_pub.linear.x = 0;
    twist_pub.linear.y = 0;
    twist_pub.linear.z = 0;

    twist_pub.angular.x = 0;
    twist_pub.angular.y = 0;
    twist_pub.angular.z = 0;
    // initialize twist_pub

    if (pos1.x == 1e9 || pos1.y == 1e9 || pos1.theta == 1e9)
    {
        return;

        // if t1_callback hasn't been called once, and pos1 is still unchanged, then return
    }
    
    if (_pos2->y >= pos1.y) // if turtle2 starts from a level above or equal to level of turtle1
    {
        if (_pos2->x - pos1.x >= 2) // if the turtle2 has moved past turtle1 by a safe distance
        {
            return;
        }
        else if (_pos2->theta != 0 && _pos2->y - pos1.y >= 2) // if turtle2 is not moving horizontally, and is above turtle1
        {
            twist_pub.angular.z = -70;
            // turn right

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub
            
            return;
        }
        else if (pos1.x - _pos2->x > 2) // if turtle2 is towards left of turtle1 by more than 2 units
        {
            twist_pub.linear.x = 2;
            // keep on moving horizontally

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub
            
            return;
        }
        else if (_pos2->theta == 0 && _pos2->y - pos1.y >= 1.9) // if the turtle2 is moving horizontally, and is significantly above turtle1
        {
            twist_pub.linear.x = 2;
            // keep on moving horizontally

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub

            return;
        }
        else if (pos1.x - _pos2->x <= 2) // if the turtle2 is less than 2 units behind turtle1
        {
            if (_pos2->theta == 0) // if it is moving horizontally
            {
                twist_pub.angular.z = 70;
                // turn left

                vel_pub.publish(twist_pub);
                // publish the changed twist_pub

                return;
            }

            twist_pub.linear.x = 2;
            // keep on moving in the slant direction

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub

            return;
        }
    }
    else  // if turtle2 starts from a level below the level of turtle1
    {
        if (_pos2->x - pos1.x >= 2) // if the turtle2 has moved past turtle1 by a safe distance
        {
            return;
        }
        else if (_pos2->theta != 0 && pos1.y - _pos2->y >= 2) // if turtle2 is not moving horizontally, and is below turtle1
        {
            twist_pub.angular.z = 70;
            // turn left

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub

            return;
        }
        else if (pos1.x - _pos2->x > 2) // if turtle2 is towards left of turtle1 by more than 2 units
        {
            twist_pub.linear.x = 2;
            // keep on moving horizontally

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub

            return;
        }
        else if (_pos2->theta == 0 && pos1.y - _pos2->y >= 1.9) // if the turtle2 is moving horizontally, and is significantly below turtle1
        {
            twist_pub.linear.x = 2;
            // keep on moving horizontally

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub

            return;
        }
        else if (pos1.x - _pos2->x <= 2) // if the turtle2 is less than 2 units behind turtle1
        {
            if (_pos2->theta == 0)
            {
                twist_pub.angular.z = -70;
                // turn right

                vel_pub.publish(twist_pub);
                // publish the changed twist_pub

                return;
            }

            twist_pub.linear.x = 2;
            // keep on moving in the slant direction

            vel_pub.publish(twist_pub);
            // publish the changed twist_pub

            return;
        }
    }
}