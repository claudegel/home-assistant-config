#!/bin/bash

sed "s/<path to homeassistant configuration directory>/\$PWD/g" home-assistant@pi.service.in > /etc/systemd/system/home-assistant@pi.service

echo "Please edit path and user"

sudo systemctl enable home-assistant@pi.service

