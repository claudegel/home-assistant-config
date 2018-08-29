#!/bin/bash

# Ensure pdb is installed:
# sudo apt-get install gdb python2.7-dbg

echo "usage: $0 pid"

ps aux | grep "bin\/hass"

pipenv run gdb python $1


