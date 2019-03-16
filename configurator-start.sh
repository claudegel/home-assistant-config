#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0)

source .venv/bin/activate

hass-configurator ./configurator.json
