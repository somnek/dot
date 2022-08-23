#!/bin/bash
curl -sS https://webinstall.dev/zoxide | bash
echo "eval \"\$(zoxide init bash)\"" >> ~/.bashrc # >> append while > overwrite
exec $SHELL -l # -l is for login shell
echo "note: this is only for bash, need to write one for zsh"