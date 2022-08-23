#!/bin/bash
set -e
sudo apt-get update && \
sudo apt-get install docker-compose-plugin

VERSION_STRING="apt-cache madison docker-compose-plugin | awk 'NR==1{print $3}'"
sudo apt-get install docker-compose-plugin=$VERSION_STRING && \
docker-compose version && \
echo -e "\e[32mDone!\e[0m"


