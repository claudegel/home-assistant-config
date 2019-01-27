#!/bin/bash

cd $(dirname $0)

export PATH=$HOME/.local/bin:$PATH
#export TMPDIR=$(cd tmp && pwd)
#export PIP_NO_CACHE_DIR=off
#export PIPENV_CACHE_DIR=$TMPDIR/pip

source .venv/bin/activate

pip install --upgrade pip pipenv wheel
pip install --upgrade homeassistant

./restart-daemon.sh

