# Alias
alias "cors"="google-chrome --disable-web-security --user-data-dir=\"$HOME/chromeData\""
alias "vim"="nvim.appimage"
alias "sl"="ls"

# Enviroment paths & variables
export PATH=$HOME/bin:/usr/local/go/bin:$PATH
export PATH=$PATH:$GOPATH/bin:$PCPATH:$REACTPATH
export GOPATH=$HOME/go
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"

# Self-define function
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

export NVM_DIR="/home/thongnt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# load zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
   # specify plugins here
   zgen oh-my-zsh
   zgen oh-my-zsh plugins/git
   zgen oh-my-zsh plugins/sudo
   zgen oh-my-zsh plugins/command-not-found
   zgen oh-my-zsh plugins/docker
   zgen oh-my-zsh plugins/docker-compose
   zgen load zsh-users/zsh-autosuggestions
   zgen load denysdovhan/spaceship-prompt spaceship
   zgen load zsh-users/zsh-syntax-highlighting
  # generate the init script from plugins above
  zgen save
fi
