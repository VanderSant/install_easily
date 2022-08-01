#!/bin/bash

ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations
CUBE_PATH=$INSTALATION_PATH/cubemx

cd instalations
mkdir stm_cube_programmer && cd stm_cube_programmer
curl -O https://www.st.com/content/ccc/resource/technical/software/utility/group0/2b/58/90/97/ad/a1/46/10/stm32cubeprg-lin_v2-10-0/files/stm32cubeprg-lin_v2-10-0.zip/jcr:content/translations/en.stm32cubeprg-lin_v2-10-0.zip
unzip stm32cubeprg-lin_v2-10-0.zip


source ~/.bashrc
cd $ROOT_PATH
