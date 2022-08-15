#!/bin/bash

# EMAIL=vanderson0001@gmail.com
# SENHA=Sinequanon@153047

# setuṕ
ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations

# script
sudo apt purge openjfx
sudo apt install openjfx=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2
sudo apt-mark hold openjfx libopenjfx-jni libopenjfx-java

cd instalations
mkdir stm_cube_mx && cd stm_cube_mx
mkdir install
curl -O https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/7b/42/34/97/63/b7/4d/05/stm32cubemx-lin_v6-6-1/files/stm32cubemx-lin_v6-6-1.zip/jcr:content/translations/en.stm32cubemx-lin_v6-6-1.zip
unzip -q en.stm32cubemx-lin_v6-6-1.zip 

chmod +x SetupSTM32CubeMX-6.6.1
./SetupSTM32CubeMX-6.6.1 

# path
echo "export CUBE_PATH=$ROOT_PATH/instalations/stm_cube_mx/install" >> ~/.bashrc

source ~/.bashrc
cd $ROOT_PATH

#                   /content/ccc/resource/technical/software/sw_development_suite/group0/7b/42/34/97/63/b7/4d/05/stm32cubemx-lin_v6-6-1/files/stm32cubemx-lin_v6-6-1.zip/jcr:content/translations/en.stm32cubemx-lin_v6-6-1.zip
# https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/7b/42/34/97/63/b7/4d/05/stm32cubemx-lin_v6-6-1/files/stm32cubemx-lin_v6-6-1.zip/_jcr_content/translations/en.stm32cubemx-lin_v6-6-1.zip
# https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/7b/42/34/97/63/b7/4d/05/stm32cubemx-lin_v6-6-1/files/stm32cubemx-lin_v6-6-1.zip/jcr:content/translations/en.stm32cubemx-lin_v6-6-1.zip