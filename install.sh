#!/bin/bash

set -ue

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
brew install git
brew install curl
brew install wget
brew install tree
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install visual-studio-code
brew cask install docker
brew cask install virtualbox
brew cask install postman
brew cask install ngrok
brew cask install slack
brew cask install skype
brew cask install mactex

source ~/.bash_profile