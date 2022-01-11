# Alias
alias "cors"="google-chrome --disable-web-security --user-data-dir=\"$HOME/chromeData\""
alias "vim"="nvim"
alias "sl"="ls"
alias loadnvm=". $HOME/.nvm/nvm.sh"

# Enviroment paths & variables
export GOROOT='/usr/local/go'
export GOPATH=$HOME/go
# Create symlink instead
#ln -s /usr/local/go/bin/go /usr/bin/go
#ln -s /usr/local/go/bin/gofmt /usr/bin/gofmt
export PATH=$PATH:/usr/local/go/bin:~/.sdk/flutter/bin:/Users/thongnt/Library/Python/3.8/bin:$GOPATH/bin
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"

# Self-define function
function switchtowindow {
  WINDOWS_TITLE=`grep -i 'windows' /boot/grub/grub.cfg|cut -d"'" -f2`
  sudo grub-reboot "$WINDOWS_TITLE"
  sudo reboot
}

function gcfpersonal {
  git config user.name "Thong Nguyen"
  git config user.email "thongnt.it@gmail.com"
}

function gcfwork {
  git config user.name "Thong Nguyen"
  git config user.email "thongnguyen@chotot.vn"
}

# zsh tmux settings
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_FIXTERM=true
ZSH_TMUX_AUTOQUIT=true

# load zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
   # specify plugins here
   zgen oh-my-zsh
   zgen oh-my-zsh plugins/git
   zgen oh-my-zsh plugins/tmux
   zgen oh-my-zsh plugins/sudo
   zgen oh-my-zsh plugins/command-not-found
   zgen oh-my-zsh plugins/docker
   zgen oh-my-zsh plugins/docker-compose
   zgen load zsh-users/zsh-autosuggestions
   zgen load zsh-users/zsh-syntax-highlighting
   zgen load b4b4r07/emoji-cli
   zgen load sobolevn/wakatime-zsh-plugin
   zgen load spaceship-prompt/spaceship-prompt spaceship
  # generate the init script from plugins above
  zgen save
fi


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
