#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y \
    ffmpeg \
    libudev-dev \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libavfilter-dev \
    mariadb-server \
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

# don't forget to run: sudo mysql_secure_installation

rm -rfv .venv
python3 -m venv .venv

pip install --user --upgrade pip pipenv wheel

source .venv/bin/activate
pip3 install --upgrade \
    homeassistant==$(cat .homeassistant.version) \
    hass-configurator \
    homeassistant-cli \
    pymysql

    # custom_components/climate/pid_controller/
