#!/bin/bash

pipenv run python hass_pipenv.py \
	--script check_config \
	--info all \
	--config /home/pi/homeassistant | less -R
