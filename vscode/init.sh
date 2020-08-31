#!/bin/bash

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

if [ -e ~/Library/Application\ Support/Code/User ]; then
  ln -fs "$CURRENT_DIR/settings.json" ~/Library/Application\ Support/Code/User
  ln -fs "$CURRENT_DIR/snippets" ~/Library/Application\ Support/Code/User
fi
