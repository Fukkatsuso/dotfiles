#!/bin/bash

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

function has() {
  type "$1" > /dev/null 2>&1
}

source ~/.bash_profile

if has "brew"; then
  echo "Homebrew is already installed"
else
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Installing Homebrew-cask..."
  brew install cask
fi

echo "Updating Homebrew..."
brew update && brew upgrade

echo "Installing applications..."
while read -r line
do
  brew install "$line"
done < "$CURRENT_DIR/brew"

source ~/.bash_profile
