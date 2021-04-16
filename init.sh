#!/bin/bash

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

for f in \
	".bash_profile" \
	".bashrc" \
	".gitconfig" \
	".gitconfig-aiot"; do
  echo "symbolic link: $CURRENT_DIR/$f"
	ln -fs "$CURRENT_DIR/$f" ~
done