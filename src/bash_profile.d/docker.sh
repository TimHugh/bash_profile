# docker-compose
[[ "$(command -v docker-compose)" ]] && alias dc='docker-compose'

# docker-machine
if [ -x "$(command -v docker-machine)" ]; then
  # aliases
  alias dm='docker-machine'
  alias dm-env='eval $(docker-machine env)'

  # init docker env for default machine
  [[ "$(docker-machine status)" == *"Running"* ]] && eval "$(docker-machine env)"
fi
