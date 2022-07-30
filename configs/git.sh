#!/bin/bash
# Purpose: Config basic git and github
# Author: Vanderson Santos
# Note : The script must run as a cron-job.
# Last updated on : 2/2022
# -----------------------------------------------

GITHUB_USER="VanderSant"
GITHUB_EMAIL="vanderson.santos@enline-transmission.com"

# Config git
git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"
git config --global init.defaultBranch main