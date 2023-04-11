#!/bin/bash

########
# nvim #
########
rm -rf "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/nvim" "$HOME/.config"

########
# tmux #
########
rm -rf "$HOME/.config/tmux"
ln -s "$HOME/dotfiles/tmux" "$HOME/.config"

########
#  i3  #
########
rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

#############
# alacritty #
#############
rm -rf "$HOME/.config/alacritty"
ln -s "$HOME/dotfiles/alacritty/" "$HOME/.config"
