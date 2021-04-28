#!/bin/bash

#Setup wine prefix
dir=~/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=~/.screensavers winecfg	
fi

#Install screensaver
cp "$(dirname "$0")/Mystify.scr" ~/.screensavers/drive_c/windows/
