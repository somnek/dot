#!/bin/sh
set -e
git clone https://github.com/docker/docker-install && \
cd docker-install && \
./install.sh  && \
sudo groupadd docker && \
sudo usermod -aG docker $USER && \
echo "Done!Now reboot..."
