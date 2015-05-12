# cwd bin and ~ bin
export PATH=./bin:~/bin:$PATH

# handy LS aliases
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# handy git alias
alias g='git'
# git bash completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# chruby init
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
# set default ruby
chruby 2.2.2

# nvm init
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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
alias gitx='/Applications/GitX.app/Contents/MacOS/GitX'

