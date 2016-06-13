#!/usr/bin/env bash
#
# Update and symlinks the dot files.
#git pull --rebase origin master

#
# Prezto
#

# Core
ln -s "$HOME"/.dotfiles/prezto "$HOME"/.zprezto

# Configutation
for dotfile in "$HOME"/.dotfiles/prezto/runcoms/*; do
    ln -s "$dotfile" "$HOME/.${dotfile#$HOME/.dotfiles/prezto/runcoms/}"
done
