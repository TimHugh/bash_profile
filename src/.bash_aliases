# handy LS aliases (and color!)
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# human readable file sizes
alias df='df -h'
alias du='du -h'

# vim shortcuts
export EDITOR='nvim'
export MYVIMRC=~/.vim/.vimrc
alias edit='$EDITOR'
alias e=edit

# handy git alias
alias g='git'
# use hub in place of git
# (https://hub.github.com/)
[[ $(command -v hub) ]] && alias git='hub'
