#!/bin/bash

FILES="$(dirname "$0")/files"

#Install screensaver
if [ ! -f ~/.screensavers/drive_c/windows/system32/System47.scr ]; then
	WINEPREFIX=~/.screensavers wine "$FILES/system47 v2.2_setup.exe"
fi
