#!/bin/bash
if [ -f /etc/systemd/system/screensaver.service ]; then
  echo "Stopping systemd service..."
  sudo systemctl stop screensaver
  
  echo "Disabling service..."
  sudo systemctl disable screensaver
  
  echo "Removing service..."
  sudo rm -f /etc/systemd/system/screensaver.service
fi

echo "Removing daemon script..."
rm -f ~/.screensavers/daemon.sh
