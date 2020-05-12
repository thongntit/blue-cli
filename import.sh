#!/bin/bash


cp ~/.vimrc .
cp ~/.tmux.conf .
cp ~/.bashrc .
cp ~/.zshrc .

# Copy NVIM config
cp ~/.config/nvim/coc-settings.json nvim/
cp ~/.config/nvim/init.vim nvim/
cp -r ~/.config/nvim/colors nvim/
cp -r ~/.config/nvim/autoload nvim/
