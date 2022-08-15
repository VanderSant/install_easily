#!/bin/bash

ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations

cd instalations
git clone https://github.com/elasticdog/transcrypt.git
cd transcrypt/
# sudo ln -s ${PWD}/transcrypt /usr/local/bin/transcrypt
echo "export PATH=\$PATH:$ROOT_PATH/instalations/transcrypt" >> ~/.bashrc