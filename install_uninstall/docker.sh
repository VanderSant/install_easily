#!/usr/bin/env bash
# Purpose: Install or Uninstall Docker
# Author: Vanderson Santos
# Note : The script must run as a cron-job.
# Last updated on : 10/2021
# -----------------------------------------------

echo Hello, I am will install or uninstall docker!
read -p 'What do you want? install(i) uninstall(u) ' mode

if test "$mode" = "i"
then
    # Uninstall old versions
    sudo apt-get remove docker docker-engine docker.io containerd runc

    # Installation methods
    sudo apt-get update
    sudo apt-get install \
         ca-certificates \
         curl \
         gnupg \
         lsb-release -Y
    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    # Install Docker Engine
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io

    # Install Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version

    # Docker post-installation
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
elif test "$mode" = "u"
then
    # Uninstall docker and docker compose
    sudo snap remove docker
    sudo rm $(which docker-compose)
else
    echo "not a valid option"
fi
