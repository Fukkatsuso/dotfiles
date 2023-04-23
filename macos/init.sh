#!/bin/zsh

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

for f in \
  ".zlogin" \
  ".zshrc" \
  ".gitconfig" \
  ".gitconfig_work"; do
  echo "symbolic link: $CURRENT_DIR/$f"
  ln -fs "$CURRENT_DIR/$f" ~
done
