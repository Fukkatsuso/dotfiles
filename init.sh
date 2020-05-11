#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)

ln -s ${CURRENT_DIR}/.bash_profile ~
