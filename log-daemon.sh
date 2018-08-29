#!/bin/bash

sudo journalctl -f -n 100 -u home-assistant@pi.service
