#!/bin/bash
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

sudo apt-get install zip && \
sudo apt-get install unzip && \

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip
oh-my-posh font install

eval "$(oh-my-posh init bash)" >> ~/.bashrc
exec bash

echo "get your themes at: https://ohmyposh.dev/docs/themes"
echo "note that this script you are using bash"





# src [installation](https://ohmyposh.dev/docs/installation/linux)
