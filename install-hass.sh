#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y \
    ffmpeg
    libudev-dev \
    nmap \
    raspberrypi-kernel-headers \
    iperf3 \
    python3-pip \
    python3-venv \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev

rm -rfv .venv
python3 -m venv .venv

source .venv/bin/activate
pip install --upgrade pip pipenv wheel
pip install --upgrade homeassistant hass-configurator
pip install custom_components/climate/pid_controller/
