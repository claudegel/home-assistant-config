#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0)
export TMPDIR=$(cd tmp && pwd)

pipenv run python configurator.py ./configurator.json &
pipenv run hass \
	--config . \
	--log-rotate-days 2 \
	--pid-file home-assistant.pid
