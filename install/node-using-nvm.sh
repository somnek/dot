#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash && \
	source ~/.bashrc && \
	nvm install v16.15.1


echo "Done"
echo "you can 'nvm list-remote' to list out all available version."


