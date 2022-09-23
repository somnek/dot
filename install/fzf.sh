#!/bin/bash

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# need to add that shit to .bashrc | .zshrc
if [ -n "$ZSH_VERSION" ]; then
  # assume Zsh
  echo "source ~/.fzf.zsh" >> ~/.zshrc
  echo "source /usr/share/doc/fzf/examples/key-bindings.zsh" >> ~/.zshrc
  echo "source /usr/share/doc/fzf/examples/completion.zsh" >> ~/.zshrc

elif [ -n "$BASH_VERSION" ]; then
  # assume Bash
  echo "source ~/.fzf.bash" >> ~/.bashrc
  echo "source /usr/share/doc/fzf/examples/completion.bash" >> ~/.bashrc
  echo "source /usr/share/doc/fzf/examples/key-bindings.bash" >> ~/.bashrc
fi
