#!/bin/bash

### ZSH
# Check if oh my zsh is installed
if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
	echo 'Oh-my-zsh is installed'
else
	if [ -d ~/.oh-my-zsh ]; then
		rm -rf ~/.oh-my-zsh
	fi
	echo 'Oh-my-zsh is not installed'
	echo 'Installing oh-my-zsh'
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" > /dev/null
fi

# Check if zsh-autosuggestion is installed
if [ -d ~/.oh-my-zsh/plugins/zsh-autosuggestions ]
then
	echo "Zsh-autosuggestions is installed"
else
	echo "Zsh-autosuggestions is not installed"
	echo "Installing zsh-autosuggestions"
	mkdir -pv ~/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions > /dev/null
fi

### TMUX
# Check if tmux powerline is installed
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
