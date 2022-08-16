#!/bin/bash

# setup repo
if [[ ! -e ~/.dotfiles ]]; then
  echo "Cloning dotfiles repo to ~/.dotfiles"
  git clone --bare git@github.com:dkomisar/dotfiles.git ~/.dotfiles
  git --git-dir=~/.dotfiles --work-tree=~/ checkout master 
fi

# install xcape to allow sending ESC with single Ctrl press
if [[ $(uname) == Linux ]]; then
  echo 'Installing dependencies'
  sudo apt update && sudo apt install xcape -f
fi

# TODO setup keyboard.sh as a startup application

# setup shells to call config
if [[ -e ~/.bashrc ]] && ! grep 'shell-setup' ~/.bashrc; then
  echo 'Installing bash'
  echo 'source ~/.shell-setup/setup.sh' >> ~/.bashrc
fi
if [[ -e ~/.zshrc ]] && ! grep 'shell-setup' ~/.zshrc; then
  echo 'Installing zsh'
  echo 'source ~/.shell-setup/setup.sh' >> ~/.zshrc
fi

