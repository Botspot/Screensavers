#!/bin/bash

#Setup wine prefix
dir=~/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp "$(dirname "$0")/3DPipes.scr" ~/.screensavers/drive_c/windows/
