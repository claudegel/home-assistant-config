#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0 && pwd)
export TMPDIR=$(cd tmp && pwd)

pipenv update
