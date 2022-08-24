#!/bin/bash
if [ -x "$(command -v snap)" ]; then
    sudo snap install --classic certbot && \
    sudo ln -s /snap/bin/certbot /usr/bin/certbot
else 
    echo "lil bro don't have snapd installed 💀"
fi