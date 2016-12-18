# load common .bashrc settings
[[ -f ~/.bashrc ]] && source ~/.bashrc

# chruby init
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
# set default ruby
chruby 2.3.1

# nvm init
source $(brew --prefix nvm)/nvm.sh

# init docker env for local devbox
# (currently commented out because I'm using dlite: https://github.com/nlf/dlite)
# [[ "$(docker-machine status)" == *"Running"* ]] && eval "$(docker-machine env)"

# handy dandy server
alias serve='ruby -run -ehttpd . -p4000'

# homebrew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
