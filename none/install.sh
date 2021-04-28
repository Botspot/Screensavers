#!/bin/bash

echo "Creating systemd service for '$currentclick'..."
#Stop existing screensaver.service
if [ -f /etc/systemd/system/screensaver.service ]; then
  echo "Stopping the service first..."
  sudo systemctl stop screensaver	
  sudo systemctl disable screensaver
  sudo rm /etc/systemd/system/screensaver.service
fi

echo "Reloading systemd daemon..."
sudo systemctl daemon-reload
