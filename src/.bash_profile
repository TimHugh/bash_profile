# load secret env variables!
[[ -f ~/.env ]] && source ~/.env

# put homebrew first in path
export PATH=/usr/local/bin:$(getconf PATH)

# eternal history
export HISTFILE="/Users/${USER}/.bash_eternal_history"
export HISTSIZE=
export HISTFILESIZE=
# add timestamp to history
export HISTTIMEFORMAT='%Y\%m\%d %T '
# write history immediately
export PROMPT_COMMAND='history -a'

# load bash aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# custom prompt with current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\W$(parse_git_branch) $ '

# add user bin to path
export PATH=~/bin:$PATH

# chruby init
if [ -x $(command -v chruby) ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi

# go paths
if [ -x $(command -v go) ]; then
  export GOPATH=~/go
  export GOROOT=/usr/local/opt/go/libexec
  export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
fi

# nvm init
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# init docker env for default machine
[[ $(command -v docker-machine) ]] && [[ "$(docker-machine status)" == *"Running"* ]] && eval "$(docker-machine env)"

# homebrew bash completion
[[ -f `brew --prefix`/etc/bash_completion ]] && . `brew --prefix`/etc/bash_completion

# hacky watch script for triggering tasks when files change
# example:
#   $ watch "app spec" "bundle exec rake"
function watch {
  lastsum=""

  while [[ true ]]
  do
    cursum=`find $1 -type f -exec md5 {} \;`
    if [[ $lastsum != $cursum ]] ; then
      eval $2
      lastsum=$cursum
    fi
    sleep 2
  done
}
