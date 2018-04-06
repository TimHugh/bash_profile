if [ -x "$(command -v go)" ]; then
  export GOPATH=~/go
  export GOROOT=/usr/local/opt/go/libexec
  export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
fi
