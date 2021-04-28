To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK

Commands to controll the screensaver service

Reload service daemon         : sudo systemctl daemon-reload
Verify service is running     : sudo systemctl status screensaver
Enable on startup             : sudo systemctl enable screensaver
Start screensaver service     : sudo systemctl start screensaver
Stop screensaver service      : sudo systemctl stop screensaver