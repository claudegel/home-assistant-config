#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0)
export TMPDIR=$(cd tmp && pwd)

pipenv run python configurator.py /mnt/storage/domotic/homeassistant/hass-configurator-settings.conf &
pipenv run python hass_pipenv.py \
	--config /mnt/storage/domotic/homeassistant \
	--log-rotate-days 3 \
	--pid-file home-assistant.pid
