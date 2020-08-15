# Alias
alias "cors"="google-chrome --disable-web-security --user-data-dir=\"$HOME/chromeData\""
alias "vim"="nvim.appimage"

# Enviroment paths
export PATH=$HOME/bin:/usr/local/go/bin:$PATH
export PATH=$PATH:$GOPATH/bin:$PCPATH:$REACTPATH
export GOPATH=$HOME/go

#Self-define function
function switchtowindow {
	WINDOWS_TITLE=`grep -i 'windows' /boot/grub/grub.cfg|cut -d"'" -f2`
	sudo grub-reboot "$WINDOWS_TITLE"
	sudo reboot
}

# zsh tmux settings
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_FIXTERM=true
ZSH_TMUX_AUTOQUIT=true

# eliminating delay in vim
KEYTIMEOUT=1

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"

ZSH_THEME="spaceship"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load ssh time)

plugins=(tmux git zsh-autosuggestions docker-compose docker)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/thongnt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
