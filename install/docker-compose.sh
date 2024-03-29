#!/bin/bash

user="docker"
repo="compose"
os=$(uname -s)
arch=$(uname -m)
latest=$(curl -sSL "https://api.github.com/repos/$user/$repo/releases/latest" | jq -r .name)
rel="https://github.com/docker/compose/releases/download/$latest/docker-compose-$os-$arch"
sudo curl -L "$rel" -o "/usr/local/bin/docker-compose"
chmod +x /usr/local/bin/docker-compose