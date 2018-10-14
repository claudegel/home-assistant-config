#!/bin/bash

pipenv run hass \
	--script check_config \
	--info all \
	--config /home/pi/homeassistant | less -R
