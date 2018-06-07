#!/usr/bin/env bash

# Prezto Core
ln -s "$HOME"/.dotfiles/prezto "$HOME"/.zprezto

# Prezto runcoms
for dotfile in "$HOME"/.dotfiles/prezto/runcoms/*; do
    ln -s "$dotfile" "$HOME/.${dotfile#$HOME/.dotfiles/prezto/runcoms/}"
done

# Scripts
ln -s "$HOME"/.dotfiles/scripts "$HOME"/scripts

# Doom emacs private module
ln -s "$HOME"/.dotfiles/doom_emacs_module "$HOME"/.emacs.d/modules/private

#
# Config files
#
for config in "$HOME"/.dotfiles/.config/*; do
    ln -s "$config" "$HOME"/.config
done
