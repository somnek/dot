#!/bin/sh
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz && \
sudo tar xvzf ./ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin && \
echo "Done"


## rob's version: ##

#!/bin/bash
#set -x

#curl -SsLO "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz"
#mkdir -p ~/.local/bin
#tar zxvf ngrok-v3-stable-linux-amd64.tgz -C ~/.local/bin
