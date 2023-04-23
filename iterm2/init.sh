#!/bin/bash

set -ue

CURRENT_DIR=$(cd "$(dirname "$0")"; pwd)

cp "$CURRENT_DIR/com.googlecode.iterm2.plist" ~/Library/Preferences/
