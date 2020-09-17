#!/bin/bash

# Check if zsh-autosuggestion is installed
if [ -d ~/.zgen ]
then
	echo "zgen was installed"
else
	echo "zgen has not been installed"
	echo "Installing zgen"
	git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

### TMUX
# Check if oh-my-tmux is installed
if [ -f ~/.tmux/.tmux.conf ]
then
	echo "oh-my-tmux was installed "
else
	echo "oh-my-tmux has not been installed"
	echo "Installing oh-my-tmux"
	git clone https://github.com/gpakosz/.tmux.git ~/.tmux/ > /dev/null
	ln -s -f .tmux/.tmux.conf
	cp .tmux/.tmux.conf.local .
fi
