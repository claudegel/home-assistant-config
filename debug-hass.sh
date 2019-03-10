#!/bin/bash

# Ensure pdb is installed:
# sudo apt-get install gdb python2.7-dbg

echo "usage: $0 pid"

ps aux | grep "bin\/hass"

source .venv/bin/activate
gdb python $1
