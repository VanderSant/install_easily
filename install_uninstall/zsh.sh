#!/bin/bash

sudo apt update
sudo apt install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
echo source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh \n >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \n >> ~/.zshrc

