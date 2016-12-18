# load secret env variables!
[[ -f ~/.env ]] && source ~/.env

# load bash aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# custom prompt with current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\W$(parse_git_branch) $ '

# add user bin to path
export PATH=~/bin:$PATH

# go paths
export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# node version manager path
export NVM_DIR=~/.nvm

# eternal history
export HISTFILE='/Users/Tim/.bash_eternal_history'
export HISTSIZE=
export HISTFILESIZE=
# add timestamp to history
export HISTTIMEFORMAT='%Y\%m\%d %T '
# write history immediately
export PROMPT_COMMAND='history -a'
