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
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version
elif test "$mode" = "u"
then
    echo "Uninstall"
else
    echo "not a valid option"
fi
