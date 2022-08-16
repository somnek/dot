#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install vim && \
sudo apt-get update && \
sudo apt -y install jq && \
bash ./install/neovim.sh && \
touch ~/.bash_aliases && \
echo "alias nv='nvim'" >> ~/.bash_aliases && \
echo "alias lst='ls -tl'" >> ~/.bash_aliases
source ~/.bash_aliases


# note: 
# 1. git is not needed because in order to get this script,
#    you need to install git and then clone the fresh-server.sh script
# 2. sudo apt-get install neovim will not get the latest version of neovim
#    install it from https://github.com/neovim/neovim/releases
#   url to get latest version: https://api.github.com/repos/neovim/neovim/releases/latest
