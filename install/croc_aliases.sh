#!/bin/bash
wget https://github.com/schollz/croc/releases/download/v9.6.0/croc_9.6.0_Linux-64bit.deb && \
sudo dpkg -i croc_9.6.0_Linux-64bit.deb && \
rm croc_9.6.0_Linux-64bit.deb
if [ ! -f ~/.bash_aliases ]; then
    touch ~/.bash_aliases
fi
# add alies co=croc to 
if ! grep -q "alias co=croc" ~/.bash_aliases; then # grep -q means "if this line is not found in the file"
    echo "alias co=croc" >> ~/.bash_aliases
fi
echo 'source and done 🐊'
source ~/.bash_aliases
echo 'done'
