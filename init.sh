#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

ln -s $CURRENT_DIR/.bash_profile ~
ln -s $CURRENT_DIR/.bashrc ~