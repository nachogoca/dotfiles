#!/bin/bash

# This script is intended to update config files for the following applications
# i3
# i3 lock
# i3 status bar
# urxvt
# zsh

cp ~/.config/i3/* ~/workspace/dotfiles/i3
cp ~/.config/i3lock/* ~/workspace/dotfiles/i3lock
cp ~/.config/i3status/* ~/workspace/dotfiles/i3status
cp ~/.Xresources ~/workspace/dotfiles/
cp ~/.zshrc ~/workspace/dotfiles/
cp ~/.vimrc ~/workspace/dotfiles/
cp ~/.screenlayout/* ~/workspace/dotfiles/screenlayout
