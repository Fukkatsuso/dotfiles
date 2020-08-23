#!/bin/bash

cat vscode_extensions | while read line
do
  code --install-extension $line
done
