#!/bin/bash

set -e

# LibreWolf
sudo apt install -y extrepo
sudo extrepo enable librewolf
sudo extrepo update librewolf
sudo apt install -y librewolf
