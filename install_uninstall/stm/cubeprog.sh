#!/bin/bash

ROOT_PATH=$(pwd)
INSTALATION_PATH=$ROOT_PATH/instalations
CUBE_PATH=$INSTALATION_PATH/cubemx

cd instalations
mkdir stm_cube_programmer && cd stm_cube_programmer
mkdir install
curl -O https://www.st.com/content/ccc/resource/technical/software/utility/group0/10/04/c7/eb/76/2e/40/9c/stm32cubeprg-lin_v2-11-0/files/stm32cubeprg-lin_v2-11-0.zip/jcr:content/translations/en.stm32cubeprg-lin_v2-11-0.zip
unzip en.stm32cubeprg-lin_v2-11-0.zip

chmod +x SetupSTM32CubeProgrammer-2.11.0.linux
./SetupSTM32CubeProgrammer-2.11.0.linux 

# path
echo "export PATH=\$PATH:$ROOT_PATH/instalations/stm_cube_programmer/install/bin" >> ~/.bashrc

source ~/.bashrc
cd $ROOT_PATH

# https://www.st.com/content/ccc/resource/technical/software/utility/group0/2b/58/90/97/ad/a1/46/10/stm32cubeprg-lin_v2-10-0/files/stm32cubeprg-lin_v2-10-0.zip/jcr:content/translations/en.stm32cubeprg-lin_v2-10-0.zip
#                   /content/ccc/resource/technical/software/utility/group0/10/04/c7/eb/76/2e/40/9c/stm32cubeprg-lin_v2-11-0/files/stm32cubeprg-lin_v2-11-0.zip/jcr:content/translations/en.stm32cubeprg-lin_v2-11-0.zip
#                   /content/ccc/resource/technical/software/utility/group0/10/04/c7/eb/76/2e/40/9c/stm32cubeprg-lin_v2-11-0/files/stm32cubeprg-lin_v2-11-0.zip/jcr:content/translations/en.stm32cubeprg-lin_v2-11-0.zip
# https://www.st.com/content/ccc/resource/technical/software/utility/group0/10/04/c7/eb/76/2e/40/9c/stm32cubeprg-lin_v2-11-0/files/stm32cubeprg-lin_v2-11-0.zip/jcr:content/translations/en.stm32cubeprg-lin_v2-11-0.zip