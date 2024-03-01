#!/bin/bash

#On my system this is translated to ~/Screensavers/<screensaver name>
FILES="$(dirname "$0")/files"
export WINEPREFIX="$HOME/.screensavers"

#Setup wine prefix
if [ ! -e "$HOME/.screensavers" ]; then
	wine wineboot || exit 1
	wineserver -w
fi

#run setup exe
if [ ! -f ~/.screensavers/drive_c/windows/system32/System47.scr ] && [ ! -f ~/.screensavers/drive_c/windows/syswow64/System47.scr ];then
	wine "$FILES/system47 v2.2_setup.exe"
fi
