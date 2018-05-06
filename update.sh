#!/bin/bash

cd $(dirname $0)
export TMPDIR=$(mkdir -p tmp && cd tmp && pwd)
echo "Setting tmpdir to: $TMPDIR)"
echo "Installing/updating home assistant"
if [[ ! -d .venv ]]; then
	PIPENV_VENV_IN_PROJECT=1 pipenv install --python /usr/local/bin/python3.5 hass
else
	PIPENV_VENV_IN_PROJECT=1 pipenv update
fi
