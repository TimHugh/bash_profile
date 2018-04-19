# put homebrew first in path
export PATH=/usr/local/bin:$(getconf PATH)

# eternal instant history (without duplicates)
# originally from ()
# but the real kicker is courtesy of (https://unix.stackexchange.com/a/18443)
HISTFILE="/Users/${USER}/.bash_eternal_history"
HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

# load bash aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# load secret env variables!
[[ -f ~/.env ]] && source ~/.env

# add user bin to path
export PATH=~/bin:$PATH

# nvm init
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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

# load additional configs
for f in ~/.bash_profile.d/* ; do
  source $f
done

# load custom prompt
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
