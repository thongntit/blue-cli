#!/bin/bash

CLI_DIR=$1
NVIM_DIR=$HOME/.config/nvim

echo "Backup config files"
mkdir -p $CLI_DIR/backup/nvim
cp    $NVIM_DIR/init.vim          $CLI_DIR/backup/nvim
cp    $NVIM_DIR/coc-settings.json $CLI_DIR/backup/nvim
cp -r $NVIM_DIR/colors            $CLI_DIR/backup/nvim
cp -r $NVIM_DIR/autoload          $CLI_DIR/backup/nvim

cp    $HOME/.vimrc $CLI_DIR/backup
cp    $HOME/.tmux.conf $CLI_DIR/backup
cp    $HOME/.bashrc $CLI_DIR/backup
cp    $HOME/.zshrc $CLI_DIR/backup


cp    $CLI_DIR/config_files/nvim/init.vim           $NVIM_DIR
cp    $CLI_DIR/config_files/nvim/coc-settings.json  $NVIM_DIR
cp -r $CLI_DIR/config_files/nvim/colors             $NVIM_DIR
cp -r $CLI_DIR/config_files/nvim/autoload           $NVIM_DIR

cp    $CLI_DIR/config_files/.bashrc     $HOME
cp    $CLI_DIR/config_files/.zshrc      $HOME
cp    $CLI_DIR/config_files/.tmux.conf  $HOME
cp    $CLI_DIR/config_files/.vimrc      $HOME

echo "Exported config files"
