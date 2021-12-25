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
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update && brew upgrade

echo "Installing applications..."
while read -r line
do
  brew install "$line"
done < "$CURRENT_DIR/brew"
while read -r line
do
  brew install --cask "$line"
done < "$CURRENT_DIR/brew_cask"

echo "Set PATH of code"
cat << EOF >> ~/.bash_profile
export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"
EOF

source ~/.bash_profile
