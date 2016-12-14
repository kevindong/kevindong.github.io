#!/bin/bash

sudo apt update
sudo apt-get install zsh vim gdb valgrind git curl
curl -L http://install.ohmyz.sh | sh
chsh -s /bin/zsh
vim ~/.zshrc
curl -L kevindong.net/vimrc -o ~/.vimrc
ssh-keygen -t rsa -b 4096
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-copy-id dong70@data.cs.purdue.edu
