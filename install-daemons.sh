#!/bin/bash

sed "s#<path to homeassistant configuration directory>#$PWD#g" home-assistant@pi.service.in > /etc/systemd/system/home-assistant@pi.service
sed "s#<path to homeassistant configuration directory>#$PWD#g" home-assistant-configurator@pi.service.in > /etc/systemd/system/home-assistant-configurator@pi.service
sed "s#<path to homeassistant configuration directory>#$PWD#g" home-assistant-appdaemon@pi.service.in > /etc/systemd/system/home-assistant-appdaemon@pi.service

echo "Please edit path and user"

sudo systemctl enable home-assistant@pi.service
sudo systemctl enable home-assistant-appdaemon@pi.service
sudo systemctl enable home-assistant-configurator@pi.service

