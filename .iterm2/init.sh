#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

mkdir -p ~/iterm2
cp $CURRENT_DIR/Iceberg-iTerm2/iceberg.itermcolors ~/iterm2/iceberg.itermcolors

ln -fs $CURRENT_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
