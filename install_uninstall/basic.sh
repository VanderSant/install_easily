#!/bin/bash

# Install basic tools
sudo apt-get install \
    build-essential \
    gcc \ 
    make \
    git \
    ca-certificates \
    gnupg \
    python3 \
    python3-pip \
    python3-rosdep \
    python3-rosdep2 \
    python3-rosinstall \
    python3-rosinstall-generator \
    python3-wstool \
    lsb-release -y

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install curl
sudo apt-get install openjdk-11-jre-headless -y

# Install snap
sudo apt update
sudo apt install snapd

# Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Poetry install
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
poetry --version