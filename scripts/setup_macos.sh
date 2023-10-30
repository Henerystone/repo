#!/bin/bash

# MacOS required tools
#
# MacOS commands
# brew install, installs packages for MacOS
echo "=== Ugrade Packages ==="
brew update
brew upgrade
#
echo "=== Install Ruby ==="
brew install chruby ruby-install xz
ruby-install ruby 3.1.3
#
echo "=== Install Python ==="
brew install python
#    
echo "=== Install Jupyter Notebook ==="
brew install jupyter