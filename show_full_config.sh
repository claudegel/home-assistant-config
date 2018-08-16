#!/bin/bash

pipenv run hass \
	--script check_config \
	--info all \
	--config /mnt/storage/domotic/homeassistant | less -R
