#!/bin/bash

CLI_DIR=$1
NVIM_DIR=~/.config/nvim

cp    $CLI_DIR/config_files/nvim/init.vim           $NVIM_DIR
cp    $CLI_DIR/config_files/nvim/coc-settings.json  $NVIM_DIR
cp -r $CLI_DIR/config_files/nvim/colors             $NVIM_DIR
cp -r $CLI_DIR/config_files/nvim/autoload           $NVIM_DIR
echo "NVIM config files exported"

