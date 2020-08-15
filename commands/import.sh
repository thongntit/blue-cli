#!/bin/bash

CLI_DIR=$1
NVIM_DIR=$HOME/.config/nvim

mkdir -p $NVIM_DIR/config_files/nvim/

cp    $NVIM_DIR/init.vim           $CLI_DIR/config_files/nvim/
cp    $NVIM_DIR/coc-settings.json  $CLI_DIR/config_files/nvim/
cp -r $NVIM_DIR/colors             $CLI_DIR/config_files/nvim/
cp -r $NVIM_DIR/autoload           $CLI_DIR/config_files/nvim/

cp    $HOME/.bashrc           $CLI_DIR/config_files/
cp    $HOME/.zshrc            $CLI_DIR/config_files/
cp    $HOME/.tmux.conf.local  $CLI_DIR/config_files/
cp    $HOME/.vimrc            $CLI_DIR/config_files/

echo "Import config files"
