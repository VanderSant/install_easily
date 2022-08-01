#!/bin/bash

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
echo "export NVM_DIR="$HOME/.nvm""
echo "[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm"
echo "[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion"

source ~/.bashrc
nvm install v16

# Install yarn
npm install --global yarn

# Install Insomnia
sudo snap install insomnia