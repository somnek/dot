#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash && \
source ~/.bashrc && \
echo "next, do 'nvm install v16.15.1'" && \
exec $SHELL && \

# code below won't be execute because exec $SHELL
echo "Done"
echo "you can 'nvm list-remote' to list out all available version."


