#!/bin/bash

# Install basic tools
sudo apt-get install \
    build-essential \
    gcc \ 
    make \
    git \
    ca-certificates \
    curl \
    gnupg \
    python3 \
    python3-pip \
    python3-rosdep \
    python3-rosinstall \
    python3-rosinstall-generator \
    python3-wstool \
    openjdk-11-jre-headless \
    lsb-release -y
    
# Install snap
sudo apt update
sudo apt install snapd

# Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Poetry install
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
poetry --version