#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install vim && \
sudo apt-get install git && \
sudo apt-get install nvim && \
touch ~/.bash_aliases && \
echo "alias vi='nvim'" >> ~/.bash_aliases && \
echo "alias lst='ls -tl'" >> ~/.bash_aliases
