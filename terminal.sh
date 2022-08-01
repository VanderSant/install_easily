#!/usr/bin/env bash

echo "> Lets start!"

#Update and upgrade before starting
sudo apt update
sudo apt upgrade -y

# basic installations
echo "> Install all basic packages"
sudo chmod +x ./install_uninstall/basic.sh
./install_uninstall/basic.sh

# The most important instalation
sudo snap install spotify

# Git configuration
echo "> Git configuration"
sudo chmod +x ./configs/git.sh
./configs/git.sh

# vscode instalation
sudo snap install --classic code

# Install fish
echo "> Install Fish"
sudo chmod +x ./install_uninstall/fish.sh
./install_uninstall/fish.sh -i

# Install Docker
echo "> Install Docker"
sudo chmod +x ./install_uninstall/docker.sh
./install_uninstall/docker.sh -i

# Install Docker Compose
echo "> Install Docker Compose"
sudo chmod +x ./install_uninstall/docker_compose.sh
./install_uninstall/docker_compose.sh -i

# Install node setup
echo "> Install Node Setup"
sudo chmod +x ./install_uninstall/node_setup.sh
./install_uninstall/node_setup.sh

# Install STM setup
mkdir instalations

# Install Ros
echo "> Install Ros Noetic"
sudo chmod +x ./install_uninstall/ros.sh
./install_uninstall/ros.sh -i

