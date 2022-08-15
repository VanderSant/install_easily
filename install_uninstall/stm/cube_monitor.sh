#!/bin/bash

ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations

cd instalations
mkdir stm_cube_monitor && cd stm_cube_monitor
mkdir install
curl -O https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/b1/14/a0/74/6d/ac/4d/4c/STM32CubeMon-Lin_v1-4-0/files/STM32CubeMon-Lin_v1-4-0.zip/jcr:content/translations/en.STM32CubeMon-Lin_v1-4-0.zip
unzip en.STM32CubeMon-Lin_v1-4-0.zip

chmod +x SetupSTM32CubeProgrammer-2.11.0.linux
./SetupSTM32CubeProgrammer-2.11.0.linux 
cd STM32CubeMonitor_lin
sudo dpkg -i stm32cubemonitor_1.4.0_amd64.deb

source ~/.bashrc
cd $ROOT_PATH

# https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/b1/14/a0/74/6d/ac/4d/4c/STM32CubeMon-Lin_v1-4-0/files/STM32CubeMon-Lin_v1-4-0.zip/_jcr_content/translations/en.STM32CubeMon-Lin_v1-4-0.zip
#                   /content/ccc/resource/technical/software/sw_development_suite/group0/b1/14/a0/74/6d/ac/4d/4c/STM32CubeMon-Lin_v1-4-0/files/STM32CubeMon-Lin_v1-4-0.zip/jcr:content/translations/en.STM32CubeMon-Lin_v1-4-0.zip

# https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/b1/14/a0/74/6d/ac/4d/4c/STM32CubeMon-Lin_v1-4-0/files/STM32CubeMon-Lin_v1-4-0.zip/jcr:content/translations/en.STM32CubeMon-Lin_v1-4-0.zip