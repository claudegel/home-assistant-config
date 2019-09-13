#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y \
    ffmpeg \
    libudev-dev \
    nmap \
    raspberrypi-kernel-headers \
    iperf3 \
    python3-pip \
    python3-venv \
    build-essential \
    libssl-dev \
    libxslt1-dev \
    libffi-dev \
    python3-dev \
    build-essential



rm -rfv .venv
python3 -m venv .venv

pip install --user --upgrade pip pipenv wheel

source .venv/bin/activate
pip install --upgrade \
    homeassistant==$(cat .homeassistant.version) \
    hass-configurator \
    homeassistant-cli \
    pymysql

    # custom_components/climate/pid_controller/
