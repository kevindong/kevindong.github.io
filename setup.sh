#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install zsh vim gdb valgrind git curl
sudo apt autoremove -y
curl -L http://install.ohmyz.sh | sh
chsh -s /bin/zsh
curl -L kevindong.net/vimrc -o ~/.vimrc
curl -L kevindong.net/zshrc -o ~/.zshrc
ssh-keygen -t rsa -b 4096
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
