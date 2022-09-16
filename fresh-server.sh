#!/bin/bash


# update & upgrade
sudo apt-get -y update && sudo apt-get -y upgrade
# vim
sudo apt-get install vim && \
# neofetch
sudo apt-get install neofetch && \
# jq
sudo apt -y install jq && \
# tmux
sudo apt-get install tmux && \
# net tools
apt install net-tools && \
# neovim
bash ./install/neovim.sh && \

# create and add aliases
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
