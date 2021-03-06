#!/bin/sh

install() {
  sudo apt install vim -y
}

uninstall() {
  sudo apt remove vim -y
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  echo "skipping $1 on $0"
elif [ "$1" = "uninstall" ]; then
  uninstall
else
  echo "unsupported action $1 on $0"
fi
