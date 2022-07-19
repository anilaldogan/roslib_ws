#include "ros/ros.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "test_roslib_bridge");
    ros::NodeHandle n;

    ros::spin();
}