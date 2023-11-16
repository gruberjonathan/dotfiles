#!/bin/bash

# change PWD to script directory
builtin cd "$(dirname "$0")" || exit

if [ ! -f gitconfig.local ]; then
  cp -v gitconfig.local.dist gitconfig.local
  echo "Adapt gitconfig.local first"
  exit 0
fi

ln -sfiv "$PWD/bat.config" ~/.config/bat/config
ln -sfiv "$PWD/fish" ~/.config
ln -sfiv "$PWD/gitconfig" ~/.gitconfig
ln -sfiv "$PWD/gitconfig.local" ~/.gitconfig.local
ln -sfiv "$PWD/pnpmrc" ~/Library/Preferences/pnpm/rc
