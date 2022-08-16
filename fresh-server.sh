#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
apt-get install vim && \
apt-get install git && \
apt-get install nvim && \
touch ~/.bash_aliases && \
echo "alias vi='nvim'" >> ~/.bash_aliases && \
echo "alias lst='ls -tl'" >> ~/.bash_aliases