#!/bin/bash

#On my system this is translated to ~/Screensavers/<screensaver name>
FILES="$(dirname "$0")"
export WINEPREFIX="$HOME/.screensavers"

#Setup wine prefix
if [ ! -e "$HOME/.screensavers" ]; then
	wine wineboot || exit 1
	wineserver -w
fi

#Install screensaver
cp "$FILES/3DPipes.scr" "$WINEPREFIX/drive_c/windows/"
