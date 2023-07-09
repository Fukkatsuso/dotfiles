#!/bin/sh

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

ln -fs "$CURRENT_DIR"/.vimrc ~
ln -fs "$CURRENT_DIR"/coc-settings.json ~/.vim/

# install vim-plug
if [ ! -e ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "to install vim plugins, run ':PlugInstall' command"
fi

npm install -g dockerfile-language-server-nodejs sql-language-server
