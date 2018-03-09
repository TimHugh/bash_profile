# source bashrc shortcut
alias src='source ~/.bashrc'

# handy LS aliases (and color!)
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# human readable file sizes
alias df='df -h'
alias du='du -h'

# use preferred editor
# (defined in .env so it can vary between systems)
alias edit=$(echo $EDITOR)
alias e='edit'
alias vi='vim'

# use hub in place of git
# (https://hub.github.com/)
alias git='hub'
# handy git alias
alias g='git'

# docker-compose alias
alias dc='docker-compose'
alias dm='docker-machine'
alias dm-env='eval $(docker-machine env)'

# json pretty-print
alias pretty-json="jq '.'"

# process file to png through graphviz
function graph {
  infile=$1
  outfile=${1/dot/png}
  dot -Tpng $infile > $outfile
}
