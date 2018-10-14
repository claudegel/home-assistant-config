#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y libudev-dev

mkdir -p .venv tmp
pipenv install --skip-lock

