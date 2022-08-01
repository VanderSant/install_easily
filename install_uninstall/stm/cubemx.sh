#!/bin/bash

ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations
CUBE_PATH=$INSTALATION_PATH/cubemx

sudo apt purge openjfx
sudo apt install openjfx=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2
sudo apt-mark hold openjfx libopenjfx-jni libopenjfx-java

cd instalations
mkdir stm_cube_mx && cd stm_cube_mx
curl -O https://sw-center.st.com/packs/resource/library/stm32cube_mx_v650-lin.zip
unzip stm32cube_mx_v650-lin.zip


source ~/.bashrc
cd $ROOT_PATH