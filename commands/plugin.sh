#!/bin/bash

# Check if zgen is installed
if [ -d ~/.zgen ]
then
	echo "zgen was installed"
else
	echo "zgen has not been installed"
	echo "Installing zgen"
	git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

if [ -d ~/.nvm ]
then
	echo "nvm was installed"
else
	echo "nvm has not been installed"
	echo "Installing nvm"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
fi

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

# Install TPM
if [ -d ~/.tmux/plugins/tpm ]
then
  echo "TPM was installed"
else
  echo "TPM has not been installed"
  echo "Installing TPM"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
