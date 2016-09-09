#!/usr/bin/env bash
#
# Update and symlinks the dot files.
#git pull --rebase origin master

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

# Generic config files
for config in "$HOME"/.dotfiles/.config/*; do
    ln -s "$config" "$HOME"/.config
done

# Emacs
ln -s "$HOME"/.dotfiles/.emacs.d "$HOME"/.emacs.d
