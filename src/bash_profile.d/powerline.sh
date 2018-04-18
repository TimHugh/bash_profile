if [ -x "$(command -v powerline)" ]; then
  export POWERLINE_ROOT="$(pip show powerline-status | grep Location | cut -d ' ' -f 2)/powerline"

  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1

  . "${POWERLINE_ROOT}/bindings/bash/powerline.sh"
fi
