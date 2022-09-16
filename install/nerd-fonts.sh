#!/bin/bash
set -r
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
	cd nerd-fonts/ && \
	./install.sh && \
echo "Try select 'nerd' font from terminal, if doesn't work, reboot"


