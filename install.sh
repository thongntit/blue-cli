#!/bin/bash

#Check if program is installed, if not install it.
declare -a arr=( "git" "zsh" "curl" "tmux" "vim-gnome" "fonts-powerline")
for i in "${arr[@]}"
do
	if [ "$(dpkg --list | grep "ii  $i")" ]
	then
		echo "$i is installed"
	else
		echo "$i is not installed."
		echo "Installing $i"
		apt-get install $i -y > /dev/null
	fi
done

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

# Check if Powerlevel9k theme is installed
if [ -f ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme ]; then
	echo 'Powerlevel9k them is installed'
else
	echo 'Powerlevel9k theme is not installed'
	echo 'Installing Powerlevel9k theme'
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k > /dev/null
fi

# Check if zsh-autosuggestion is installed
if [ -f ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]
then
	echo "Zsh-autosuggestions is installed"
else
	echo "Zsh-autosuggestions is not installed"
	echo "Installing zsh-autosuggestions"
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions > /dev/null
fi


# Check if zsh-autosuggestion is installed
if [ -d ~/.oh-my-zsh/plugins/zsh-autosuggestions ]
then
	echo "Zsh-autosuggestions is installed"
else
	echo "Zsh-autosuggestions is not installed"
	echo "Installing zsh-autosuggestions"
	mkdir -pv ~/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions >&2
fi

### TMUX
# Check if tmux powerline is installed
if [ -f ~/.tmux/tmux-powerline/powerline.sh ]
then
	echo "Tmux plugins manager is installed"
else
	echo "Tmux-powerline is not installed"
	echo "Installing tmux-powerline"
	git clone https://github.com/erikw/tmux-powerline.git ~/.tmux/tmux-powerline > /dev/null

fi


### Vim
# Check if Vundle is installed
if [ -f ~/.vim/bundle/Vundle.vim/README.md ]
then
	echo "Vundle is installed"
else
	echo "Vundle is not installed"
	echo "Installing Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
fi

# Install Plugin Vim
cp .vimrc ~
vim +PluginInstall +qall
# Check if colors folder in .vim is exist
if [ -d ~/.vim/colors ]
then
	echo "Colors folder exist"
else
	mkdir -pv ~/.vim/colors
fi
# Check if Vim themes is copied to colors folder
if [ -f ~/.vim/colors/Tomorrow.vim ]
then
	echo 'Themes Copied'
else
	sudo cp ~/.vim/bundle/Tomorrow-Theme/vim/colors/Tomorrow.vim ~/.vim/colors
	sudo cp ~/.vim/bundle/Tomorrow-Theme/vim/colors/Tomorrow-Night-Eighties.vim ~/.vim/colors
fi
# Check if Solarized theme is copied to .vim/colors folder
if [ -f ~/.vim/colors/solarized.vim ]
then
	echo "Solaried Copied"
else
	sudo cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors
fi
