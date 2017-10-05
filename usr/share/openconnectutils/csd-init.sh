#!/bin/bash

# This script is a simple initialization script which ensures that the
# csd-wrapper.sh is available in ~/.cisco/csd-wrapper.sh. Once this is
# a fulfilled condition, the script will simple execute csd-wrapper.sh
# with all the arguments which were passed to this script.

if [ ! -d "$HOME/.cisco" ]; then
  mkdir "$HOME/.cisco"  
  cp "/usr/share/openconnectutils/csd-wrapper.sh" "$HOME/.cisco"
fi;

$HOME/.cisco/csd-wrapper.sh "$@"
