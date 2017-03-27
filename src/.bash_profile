# load common .bashrc settings
[[ -f ~/.bashrc ]] && source ~/.bashrc

# init docker env for local devbox
[[ "$(docker-machine status)" == *"Running"* ]] && eval "$(docker-machine env)"

# handy dandy server
alias serve='ruby -run -ehttpd . -p4000'

# homebrew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

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
