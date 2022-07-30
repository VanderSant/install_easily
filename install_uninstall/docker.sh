#!/usr/bin/env bash
# Purpose: Install or Uninstall Docker
# Author: Vanderson Santos
# Note : The script must run as a cron-job.
# Last updated on : 10/2021
# -----------------------------------------------

echo Hello, I am will install or uninstall docker!
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
    sudo apt-get remove docker docker-engine docker.io containerd runc
    
    sudo apt-get update
    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg 
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update
    sudo apt install docker-ce -y

    # Verify docker status 
    # sudo systemctl status docker

elif test "$mode" = "u"
then
    echo "Uninstall"
else
    echo "not a valid option"
fi
