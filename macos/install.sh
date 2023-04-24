#!/bin/zsh

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

function has() {
  type "$1" > /dev/null 2>&1
}

source ~/.zlogin

if has "brew"; then
  echo "Homebrew is already installed"
else
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update && brew upgrade

echo "Installing applications..."
brew bundle --file "$CURRENT_DIR/Brewfile"

source ~/.zlogin
