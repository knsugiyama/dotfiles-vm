#!/usr/bin/env bash

set -eu

echo y | sudo apt update
echo y | sudo apt upgrade

sudo apt install -y build-essential unzip ripgrep curl libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 libncurses-dev fzf libfuse-dev pkg-config libssl-dev cmake gcc

source ~/.profile
