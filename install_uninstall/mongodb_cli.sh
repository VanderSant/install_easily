#!/usr/bin/env bash

# MongoDBCLI

## Prerequisites
sudo apt-get install gnupg
## Import the public key used by apt.
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
## Create a list file for your edition of MongoDB.
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
## Invoke the following command:
sudo apt-get install -y mongocli
## Verify version
mongocli --version

# Mongo-compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.32.6_amd64.deb
sudo dpkg -i mongodb-compass_1.32.6_amd64.deb

