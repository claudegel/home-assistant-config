#!/bin/bash


source .venv/bin/activate
hass \
	--script check_config \
	--info all \
	--config /home/pi/homeassistant | less -R
