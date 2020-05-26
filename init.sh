#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

for f in .??*
do
  [[ $f == ".git" ]] && continue
  [[ $f == ".DS_Store" ]] && continue
  ln -s $CURRENT_DIR/$f ~
done