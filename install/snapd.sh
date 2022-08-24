#!/bin/bash

if [ -x "$(command -v snap)" ]; then # -x is a test for executable
    echo "snapd is already installed"
else
    echo "installing snapd"
    sudo apt-get update
    sudo apt-get install snapd
fi

sudo snap install core
sudo snap refresh core
echo -e "\e[32mDone\e[0m"