#!/bin/bash

set -ue

sudo apt update
sudo apt upgrade

sudo apt -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  git \
  shellcheck \
  software-properties-common \
  tree \
  wget

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# google-chrome
wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb stable main"

# vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update
sudo apt -y install \
  docker-ce docker-ce-cli containerd.io \
  google-chrome-stable \
  code

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
