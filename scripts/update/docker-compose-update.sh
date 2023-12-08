#!/bin/bash
set -e

# assuming your docker-compose is in /usr/local/bin/docker-compose (do "type docker-compose" first)
sudo rm /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

