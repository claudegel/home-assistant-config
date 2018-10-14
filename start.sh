#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0)
export TMPDIR=$(cd tmp && pwd)

pipenv run python configurator.py /home/pi/homeassistant/hass-configurator-settings.conf &
pipenv run python hass_pipenv.py \
	--config /home/pi/homeassistant/ \
	--log-rotate-days 3 \
	--pid-file home-assistant.pid
