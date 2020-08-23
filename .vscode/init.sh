#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

if [ -e ~/Library/Application\ Support/Code/User ]; then
  ln -s $CURRENT_DIR/settings.json ~/Library/Application\ Support/Code/User
  ln -s $CURRENT_DIR/snippets ~/Library/Application\ Support/Code/User
fi
