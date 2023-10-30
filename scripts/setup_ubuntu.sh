#!/bin/bash

# Ubuntu required tools
#
#
echo "=== Ugrade Packages ==="
sudo apt update -y
sudo apt upgrade -y
#
echo "=== Install Ruby ==="
# sudo apt install. installs packages for Ubuntu
sudo apt install ruby-full build-essential zlib1g-dev -y
#
echo "=== Install Python ==="
sudo apt-get install -y python3 python3-pip python-is-python3
#    
echo "=== Install Jupyter ==="
sudo apt-get install -y jupyter-notebook
