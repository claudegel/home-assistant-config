#!/bin/bash

cd $(dirname $0)

export PATH=$HOME/.local/bin:$PATH
export TMPDIR=$(cd tmp && pwd)
export PIP_NO_CACHE_DIR=off
export PIPENV_CACHE_DIR=$TMPDIR/pip

pipenv update --clear

./restart-daemon.sh

