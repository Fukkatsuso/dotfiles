#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

ln -fs $CURRENT_DIR/com.googlecode.iterm2.plist ~/Library/Preferences

# 設定の再読み込み
defaults read com.googlecode.iterm2