#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

cat $CURRENT_DIR/vscode_extensions | while read line
do
  code --install-extension $line
done
