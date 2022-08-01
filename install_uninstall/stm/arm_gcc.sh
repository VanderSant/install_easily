#!/bin/bash

ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations
ARM_GCC_PATH=$INSTALATION_PATH/arm_gcc

cd instalations
mkdir arm_gcc && cd arm_gcc
curl -O https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
tar -xf gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
echo "export PATH=\$PATH:$ROOT_PATH/instalations/arm_gcc/gcc-arm-none-eabi-9-2019-q4-major/bin" >> ~/.bashrc

source ~/.bashrc
cd $ROOT_PATH