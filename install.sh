#!/usr/bin/env bash
#

#
# Prezto
#

# Core
ln -s "$HOME"/.dotfiles/prezto "$HOME"/.zprezto

# Scripts
ln -s "$HOME"/.dotfiles/scripts "$HOME"/scripts

# Configutation
for dotfile in "$HOME"/.dotfiles/prezto/runcoms/*; do
    ln -s "$dotfile" "$HOME/.${dotfile#$HOME/.dotfiles/prezto/runcoms/}"
done

#
# Config files
#
for config in "$HOME"/.dotfiles/.config/*; do
    ln -s "$config" "$HOME"/.config
done
