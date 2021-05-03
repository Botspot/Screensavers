#!/bin/bash

DIRECTORY="$(dirname "$(dirname "$0")")"

#get terminal-run
if [ ! -f "${DIRECTORY}/terminal-run" ];then
  wget -O "${DIRECTORY}/terminal-run" https://raw.githubusercontent.com/Botspot/pi-apps/master/etc/terminal-run || (echo 'terminal-run failed to download.'; exit 1)
  chmod +x "${DIRECTORY}/terminal-run"
fi

#install xscreensaver in terminal
"${DIRECTORY}/terminal-run" "sudo apt update; sudo apt install -y xscreensaver xscreensaver-data xscreensaver-data-extra xscreensaver-gl xscreensaver-gl-extra xscreensaver-screensaver-bsod
if [ $? == 0 ];then
  echo -en '\e[92m\nCommand succeeded.\e[39m'
else
  echo -en '\e[91m\nCommand failed.\e[39m'
fi
echo ' Closing in 10 seconds...'
sleep 10" "Installing xscreensaver..."

#get Botspot's xscreensaver settings, if .xscreensaver file doesn't exist
if [ ! -f ~/.xscreensaver ];then
  wget -O ~/.xscreensaver 'https://gist.githubusercontent.com/Botspot/1aace99aace241fd5010ffdda9e89b3c/raw/bf6c3bace9a486b47659df72cae8f32aeb3a38d0/.xscreensaver'
fi
