#!/bin/sh
git clone https://github.com/docker-install && \
cd docker-install && \
./rootless-install.sh
echo "Done!"
# ./install.sh && \
