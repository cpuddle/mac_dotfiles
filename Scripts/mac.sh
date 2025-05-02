#!/bin/bash

rm -rf ~/.config/nvim ~/.config/alacritty ~/.config/tmux ~/.config/zsh
rm ~/.zprofile

cd ..
stow nvim alacritty tmux zsh

ln -s ~/mac_dotfiles/.zprofile ~

