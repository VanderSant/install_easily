#!/usr/bin/env bash
# Purpose: Install or Uninstall Fish
# Author: Vanderson Santos
# Note : The script must run as a cron-job.
# Last updated on : 09/2021
# -----------------------------------------------

echo Hello, I am will install or uninstall fish!
read -p 'What do you want? install(i) uninstall(u) ' mode

if test "$mode" = "i"
then
    # Update before starting
    sudo apt update
    # Install fish
    sudo apt-get install fish -y 
    # Show fish version
    fish -v
elif test "$mode" = "u"
then
    # Uninstall fish
    sudo apt-get autoremove fish -y
    sudo apt-get autoremove --purge fish -y
else
    echo "not a valid option"
fi
