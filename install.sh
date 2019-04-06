#!/bin/bash

#Check if program is installed, if not install it.
declare -a arr=( "git" "zsh" "curl" "tmux" "vim-gnome" "fonts-powerline")
for i in "${arr[@]}"
do
	if ! [ -x "$(command -v $i)" ]
	then
		echo "$i is not installed."
		echo "Installing $i"
		$(apt install $i -y) >&2
	else
		echo "$i is installed"
	fi
done


### ZSH
# Check if oh my zsh is installed
if [ -d ~/.oh-my-zsh ]; then
	echo 'Oh-my-zsh is installed'


else
	echo 'Oh-my-zsh is not installed'
	echo 'Installing oh-my-zsh'
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" >&2
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
## Check if tmux plugins manager is installed
if [ -d ~/.tmux/plugins/tpm ]
then
	echo "Tmux plugins manager is installed"
else
	echo "Tmux plugins manager is not installed"
	echo "Installing tmux plugins manager"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

fi


### Vim
# Check if Vundle is installed
if [ -d ~/.vim/bundle/Vundle.vim ]
then
	echo "Vundle is installed"
else
	echo "Vundle is not installed"
	echo "Installing Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >&2
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
