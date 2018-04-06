if [ -x "$(command -v rancher)" ]; then
  # temporarily unset local docker ENV variables when running rancher command
  function rancher {
    (eval $(docker-machine env -u); command rancher $@)
  }

  # creates a `rancher-xxx` alias for a given configuration
  function alias-rancher {
    alias "rancher-$1"="rancher -c ~/.rancher/$1.json"
  }

  # creates a new configuration file and prompts for env params
  function new-rancher {
    alias-rancher $1
    eval "rancher-$1 config"
  }

  # sets up aliases for existing configurations
  for f in ~/.rancher/*.json ; do
    [[ $f =~ ([a-z]+).json$ ]] && alias-rancher ${BASH_REMATCH[1]}
  done
fi
