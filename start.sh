#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0)
export TMPDIR=$(cd tmp && pwd)

source .venv/bin/activate

hass-configurator ./configurator.json &
hass \
	--config . \
	--log-rotate-days 2 \
	--pid-file home-assistant.pid
