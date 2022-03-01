#!/usr/bin/env bash
# Purpose: Config basic wsl
# Author: Vanderson Santos
# Note : The script must run as a cron-job.
# Last updated on : 2/2022
# -----------------------------------------------

echo "\n Update Ubuntu \n"
sudo apt-get update
sudo apt-get upgrade -y

echo "\n install Nano \n"
sudo apt-get install nano

echo "\n Set Xserver configurations \n"
echo "export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0" >> ~/.bashrc
source ~/.bashrc

echo "\n install mesa utils \n"
sudo apt install mesa-utils

echo "\n install uncrustify \n"
sudo apt-get update
sudo apt-get install uncrustify -y