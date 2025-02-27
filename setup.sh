#!/usr/bin/env bash

set -eu

function logging() {
  if [ "$#" -eq 0 -o "$#" -gt 1 ]; then
    echo "Usage: <msg>"
    return 1
  fi

  local text="$1"
  printf "[$(date +%H:%M:%S)] $text"
}

function is_exists() {
  which "$1" >/dev/null 2>&1
  return $?
}

GITHUB_URL=https://github.com/knsugiyama/dotfiles-vm.git
DOTPATH=~/.dotfiles

git clone --recursive "$GITHUB_URL" "$DOTPATH"

source "$HOME/.dotfiles/init.sh"
