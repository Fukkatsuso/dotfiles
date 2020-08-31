#!/bin/bash

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

while read -r line
do
  code --install-extension "$line"
done < "$CURRENT_DIR/vscode_extensions"
