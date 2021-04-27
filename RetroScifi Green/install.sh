#!/bin/bash

#On my system this is translated to ~/Screensavers/RetroScifiGreen
FILES="$(dirname "$0")/files"

#Setup wine prefix
dir="$HOME/.screensavers"
if [ ! -e $dir ]; then
	WINEARCH=win32 WINEPREFIX=~/.screensavers winecfg || exit 1
fi

#Install screensaver
cp "$FILES/RetroSciFi.scr" ~/.screensavers/drive_c/windows/
cp "$FILES/Msvbvm60.dll" ~/.screensavers/drive_c/windows/
cp "$FILES"/fonts/*.TTF ~/.screensavers/drive_c/windows/Fonts

