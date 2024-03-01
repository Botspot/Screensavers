#!/bin/bash

#On my system this is translated to ~/Screensavers/<screensaver name>
FILES="$(dirname "$0")/files"
export WINEPREFIX="$HOME/.screensavers"

#Setup wine prefix
if [ ! -e "$HOME/.screensavers" ]; then
	wine wineboot || exit 1
	wineserver -w
fi

#Install screensaver
cp "$FILES/StickMen.scr" "$WINEPREFIX/drive_c/windows/system32"
cp "$FILES/StickMenSound.exe" "$WINEPREFIX/drive_c/windows/system32"
