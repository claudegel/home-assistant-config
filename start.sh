#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0 && pwd)
export TMPDIR=$(cd tmp && pwd)

pipenv run ./configurator.py /mnt/storage/domotic/homeassistant/hass-configurator-settings.conf &
pipenv run hass --config /mnt/storage/domotic/homeassistant
