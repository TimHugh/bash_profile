# handy LS aliases
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# handy git alias
alias g='git'

# chruby init
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby 2.2.2

# custom prompt
export PS1='\w \$ '

# eternal history
export HISTFILE='/Users/Tim/.bash_eternal_history'
export HISTSIZE=
export HISTFILESIZE=
# other history changes
export HISTTIMEFORMAT='%Y\%m\%d %T '

