#!/bin/bash
cd catkin_ws/src
git clone https://github.com/ros-agriculture/ros_lawn_tractor.git 
git clone https://github.com/bsb808/geonav_transform.git
cd ..
rosdep update
rosdep install -y --from-paths . --ignore-src --rosdistro ${ROS_DISTRO}
apt-get install python-catkin-tools
catkin build
source devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
roslaunch lawn_tractor_sim lawn_tractor_sim.launch
