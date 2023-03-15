# Ros
ros_file="/tmp/local_ros.sh"

# Sets up a ros enviorment
function set-ros-env() {
  # $1 - ROS_MASTER_URI
  # $2 - ROS_HOSTNAME (default $(hostname))
  # $3 - ROS_IP (optional)

  # ROS_MASTER_URI
  export ROS_MASTER_URI=${1}
  printf "export ROS_MASTER_URI=${1}\n" > "${ros_file}"

  # ROS_HOSTNAME with default
  if [ "$#" -ge 2 ]; then
    export ROS_HOSTNAME=${2}
    printf "export ROS_HOSTNAME=${2}\n" >> "${ros_file}"
  else
    export ROS_HOSTNAME=$(hostname)
    printf "export ROS_HOSTNAME=$(hostname)\n" >> "${ros_file}"
  fi

  # ROS_IP
  if [ "$#" -eq 3 ]; then
    export ROS_IP=${3}
    printf "export ROS_IP=${3}\n" >> "${ros_file}"
  else
    unset ROS_IP
  fi
}

# Localhost
function localhost() {
  set-ros-env "http://localhost:11311"
}

# Print the ros enviorment vars
function rosenv() {
  env | grep -i ros
}

if [ -f /opt/ros/melodic/setup.bash ]; then
  source /opt/ros/melodic/setup.bash
fi

if [[ -e ~/.bash/local_ros.sh ]]; then
  source ~/.bash/local_ros.sh
fi

if [[ -e "${ros_file}" ]]; then
  source "${ros_file}"
fi
