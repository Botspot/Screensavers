#!/bin/bash

if [ -f ~/.screensavers/drive_c/windows/syswow64/System47.scr ];then
  WINEPREFIX=~/.screensavers wine 'C:\\windows\\syswow64\\System47.scr'
else
  WINEPREFIX=~/.screensavers wine System47.scr /s
fi
