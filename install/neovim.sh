#!/bin/bash
ALL_RELEASES="https://api.github.com/repos/neovim/neovim/releases/latest"
VERSION=$(curl -s $ALL_RELEASES | jq -r .tag_name)
echo "Downloading neovim version $VERSION..."
URL="https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.deb"
wget -O nvim.deb "$URL" # -O stands for output file
echo "Downloading $URL..."