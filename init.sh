#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

git submodule init
git submodule update

for f in .??*
do
  [[ $f == ".git" ]] && continue
  [[ $f == ".gitignore" ]] && continue
  [[ $f == ".DS_Store" ]] && continue
  ln -s $CURRENT_DIR/$f ~
done