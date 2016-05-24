# load secret env variables!
if [ -f .env ]; then
  . .env
fi

# add ~ bin to path
export PATH=~/bin:$PATH

# handy LS aliases (and color!)
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# human readable file sizes
alias df='df -h'
alias du='du -h'

# use hub in place of git
# (https://hub.github.com/)
alias git='hub'

# handy git alias
alias g='git'

# chruby init
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
# set default ruby
chruby 2.3.1

# nvm init
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# init docker env for local devbox
[[ "$(docker-machine status devbox)" == *"Running"* ]] && eval "$(docker-machine env devbox)"

# docker-compose alias
alias dc='docker-compose'

# custom prompt
export PS1='\w \$ '

# eternal history
export HISTFILE='/Users/Tim/.bash_eternal_history'
export HISTSIZE=
export HISTFILESIZE=
# add timestamp to history
export HISTTIMEFORMAT='%Y\%m\%d %T '

# handy dandy server
alias serve='ruby -run -ehttpd . -p4000'

# shortcut for gitx
# (http://rowanj.github.io/gitx/)
alias gitx='/Applications/GitX.app/Contents/MacOS/GitX . &'

# shortcut for macdown
# (http://macdown.uranusjr.com/)
function md {
  open /Applications/MacDown.app $@ &
}

# homebrew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
