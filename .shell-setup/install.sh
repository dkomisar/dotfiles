#!/bin/bash

#
# Install into a new system
#

repo=$HOME/.dotfiles

# setup repo
if [[ ! -e $repo ]]; then
  echo "Cloning dotfiles repo to $repo"
  git clone --bare git@github.com:dkomisar/dotfiles.git $repo
  git --git-dir=$repo --work-tree=$HOME checkout master 
fi

# don't show untracked files in status
git --git-dir=$repo --work-tree=$HOME config status.showUntrackedFiles no

# install xcape to allow sending ESC with single Ctrl press
if [[ $(uname) == Linux ]]; then
  echo 'Installing dependencies'
  sudo apt update && sudo apt install xcape -f
fi

# install karabiner complex mods
if [[ $(uname) == Darwin ]]; then
  echo "Installing karabiner config"
  ln -s $HOME/.shell-setup/karabiner.json $HOME/.config/karabiner/assets/complex_modifications/shell-setup.json
fi

# TODO setup keyboard.sh as a startup application

# setup shells to call config
if [[ -e $HOME/.bashrc ]] && ! grep -q 'shell-setup' $HOME/.bashrc; then
  echo 'Installing bash dotfiles setup'
  echo 'source ~/.shell-setup/activate.sh' >> $HOME/.bashrc
fi
if [[ -e $HOME/.zshrc ]] && ! grep -q 'shell-setup' $HOME/.zshrc; then
  echo 'Installing zsh dotfiles setup'
  echo 'source ~/.shell-setup/activate.sh' >> $HOME/.zshrc
fi

