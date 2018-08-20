#!/bin/bash

pipenv -rm
mkdir -p .venv
pipenv install --deploy --ignore-pipfile

