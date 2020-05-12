#!/bin/bash

CLI_DIR=$1
NVIM_DIR=$HOME/.config/nvim

cp    $CLI_DIR/backup/nvim/init.vim           $NVIM_DIR
cp    $CLI_DIR/backup/nvim/coc-settings.json  $NVIM_DIR
cp -r $CLI_DIR/backup/nvim/colors             $NVIM_DIR
cp -r $CLI_DIR/backup/nvim/autoload           $NVIM_DIR

cp    $CLI_DIR/backup/.bashrc     $HOME
cp    $CLI_DIR/backup/.zshrc      $HOME
cp    $CLI_DIR/backup/.tmux.conf  $HOME
cp    $CLI_DIR/backup/.vimrc      $HOME

echo "Reverted config files"
