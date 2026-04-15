#!/bin/bash

set -e

# Dmenu
DIR=$(pwd)
cd $HOME
git clone https://git.suckless.org/dmenu
cd dmenu
make clean
sudo make install
cd $DIR