#!/bin/bash

#On my system this is translated to ~/Screensavers/RetroScifiBlue
FILES="$(dirname "$0")/files"

#Setup wine prefix
dir="$HOME/.screensavers"
if [ ! -e $dir ]; then
	WINEARCH=win32 WINEPREFIX=~/.screensavers winecfg
fi

#Install screensaver
cp "$FILES/RetroSciFi_Blue.scr" ~/.screensavers/drive_c/windows/
cp "$FILES/Msvbvm60.dll" ~/.screensavers/drive_c/windows/
cp "$FILES"/fonts/*.TTF ~/.screensavers/drive_c/windows/Fonts
