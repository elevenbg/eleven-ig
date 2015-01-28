#!/bin/bash

SCRIPT_PATH=`dirname "$0"`
SCRIPT_PATH=`( cd "$MY_PATH" && pwd )`

# Setup the submodules
# git submodule init
# git submodule update

# Delete all npm dependency directories
rm -rf $SCRIPT_PATH/node_modules

# Delete all bower dependency directories
rm -rf $SCRIPT_PATH/dist/lib

# npm link ../platform
npm install -d
bower install -d
