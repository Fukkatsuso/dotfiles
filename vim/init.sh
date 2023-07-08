#!/bin/sh

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

ln -fs "$CURRENT_DIR"/.vimrc ~

