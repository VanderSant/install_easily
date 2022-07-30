#!/usr/bin/env bash
# Purpose: Install or Uninstall ROS
# Author: Vanderson Santos
# Note : The script must run as a cron-job.
# Last updated on : 2/2022
# -----------------------------------------------

echo Hello, I am will install or uninstall ros!
while getopts ":iu" opt; do
  case $opt in
    i)
      mode="i"
      echo "Install"
      ;;
    u)
      mode="u"
      echo "Uninstall"
      ;;
    ?)
      echo "command = $opt"  
      echo "script usage: $(basename \$0) [-i] [-u] [-a somevalue]" >&2
      read -p 'What do you want? install(i) uninstall(u) ' mode
      ;;
  esac
done
shift "$(($OPTIND -1))"

if test "$mode" = "i"
then
    ## Installation methods
    echo "\n install ROS \n"

    echo "\n Setup your sources.list \n"
    sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
    
    echo "\n Set up your keys \n"
    sudo apt install curl # if you haven't already installed curl   
    curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

    echo "\n Installation \n"
    sudo apt update
    sudo apt install ros-noetic-desktop-full -y

    echo "\n Environment setup bash and fish \n"
    echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
    source ~/.bashrc
    echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
    source ~/.zshrc 

    echo "\n Dependencies for building packages \n"
    rosdep update

elif test "$mode" = "u"
then
    # Uninstall ros
    echo "\n uninstall ROS \n"
else
    echo "not a valid option"
fi