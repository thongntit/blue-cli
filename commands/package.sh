#!/bin/bash
if [ -z "$SUDO_USER" ]
then
  echo "Please run this command as sudo privilege"
  exit 1
fi

# Package manager tools
PM="apt-get"
# Update package list
$PM update
# Check if program is installed, if not install it.
declare -a arr=( "git" "zsh" "curl" "tmux" "vim" "fonts-powerline" "zsh-antigen")
for i in "${arr[@]}"
do
    echo "Installing $i"
    $PM install $i -y
done

if [ -f /usr/bin/nvim.appimage ]; then
	echo 'Neovim is installed'
else
	echo 'Neovim was not installed'
	echo 'Installing Neovim'
	curl -Lo /usr/bin/nvim.appimage https://github.com/neovim/neovim/releases/latest/download/nvim.appimage 
  chmod +x /usr/bin/nvim.appimage
fi