#!/usr/bin/env bash

echo "> Lets start!"

#Update and upgrade before starting
sudo apt update
sudo apt upgrade -y

# basic installations
echo "> Install all basic packages"
sudo chmod +x ./install_uninstall/basic.sh
./install_uninstall/basic.sh

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

# Install Ros
echo "> Install Ros"
sudo chmod +x ./install_uninstall/ros.sh
./install_uninstall/ros.sh -i