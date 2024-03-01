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
cp "$FILES/RetroSciFi_Blue.scr" "$WINEPREFIX/drive_c/windows/"
cp "$FILES/Msvbvm60.dll" "$WINEPREFIX/drive_c/windows/"
cp "$FILES"/fonts/*.TTF "$WONEPREFIX/drive_c/windows/Fonts"
