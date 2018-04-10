if [ -f '/usr/local/opt/chruby/share/chruby/chruby.sh' ]; then
  . '/usr/local/opt/chruby/share/chruby/chruby.sh'
  chruby $DEFAULT_RUBY
fi
[[ -f '/usr/local/opt/chruby/share/chruby/auto.sh' ]]   && . '/usr/local/opt/chruby/share/chruby/auto.sh'
