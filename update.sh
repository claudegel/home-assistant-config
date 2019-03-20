#!/bin/bash

cd $(dirname $0)

export PATH=$HOME/.local/bin:$PATH

source .venv/bin/activate

./stop-daemon.sh

pip install --upgrade pip pipenv wheel
pip install --upgrade homeassistant==$(cat .homeassistant.version)

./restart-daemon.sh

