#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y \
    ffmpeg
    libudev-dev \
    nmap \
    raspberrypi-kernel-headers \

mkdir -p .venv tmp
pipenv install --skip-lock
pipenv run pip install custom_components/climate/pid_controller/
