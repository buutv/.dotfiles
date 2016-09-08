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

# Generic config files
for config in "$HOME"/.dotfiles/config/*; do
    ln -s "$config" "$HOME"/.config
done

#
# I3 wm
#

ln -s "$HOME"/.dotfiles/i3 "$HOME"/.i3
ln -sf "$HOME"/.dotfiles/.i3blocks.conf "$HOME"/.i3blocks.conf
