# Ros
source /opt/ros/indigo/setup.bash
export ROS_MASTER_URI=http://localhost:11311

if [[ -e ~/.bash/local_ros.sh ]]; then
  source ~/.bash/local_ros.sh
fi

