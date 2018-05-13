#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0 && pwd)
export TMPDIR=$(cd tmp && pwd)
export PIP_NO_CACHE_DIR=off
export PIPENV_CACHE_DIR=$TMPDIR/pip
pipenv update

