#!/bin/bash

source .venv/bin/activate
hass --script check_config --config /home/pi/homeassistant/ -i | less 
