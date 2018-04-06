# handy LS aliases (and color!)
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# human readable file sizes
alias df='df -h'
alias du='du -h'

# vim shortcuts
export MYVIMRC=~/.vimrc
alias edit='vim'
alias e='edit'

# handy git alias
alias g='git'
# use hub in place of git
# (https://hub.github.com/)
[[ $(command -v hub) ]] && alias git='hub'

# docker aliases
[[ $(command -v docker-compose) ]] && alias dc='docker-compose'
if [ -x $(command -v docker-machine) ]; then
  alias dm='docker-machine'
  alias dm-env='eval $(docker-machine env)'
fi
