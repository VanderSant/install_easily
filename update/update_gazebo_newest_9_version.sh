#!/usr/bin/env bash

# Update lib math2
sudo apt-get update
sudo apt upgrade libignition-math2 -y

# Update gazebo9 to the newest version 
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo9 -y

# show new version
gazebo -version
