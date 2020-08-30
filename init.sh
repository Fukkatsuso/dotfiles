#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

for f in \
	".bash_profile" \
	".bashrc" \
	".gitconfig"; do
  echo "symbolic link: $f"
	ln -fs $CURRENT_DIR/$f ~
done