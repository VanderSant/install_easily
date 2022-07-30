#!/bin/bash

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
