# Collection of Windows screensavers that run under emulated Wine

### To download:
```
git clone https://github.com/Botspot/Screensavers
```
### To run: (in terminal)
```
~/Screensavers/gui
```
Screenshot of the GUI:  
![2021-04-28-122643_1920x1080_scrot](https://user-images.githubusercontent.com/54716352/116447638-d40be780-a81d-11eb-97f8-3466f5d7324b.png)

### Notes:
- This is new and in beta. Unlike Pi-Apps, this application does not try to automatically work through problems. You (the user) are expected to identify problems and correct them yourself.
- This requires a working x86 Wine install. (Use Pi-Apps to install the "Wine (x86)" app if you're not using TwisterOS) Wine stores its settings (Wine prefix) in `~/.screensavers`
- This requires the YAD dialog program to be installed. If you use Pi-Apps or Pi Power Tools, it will already be installed. If not, install YAD manually: `sudo apt install yad`
- This should run fine on any Linux system: arm, x86, Debian, or some other distro.
- This repository is a fork of [phoenixbyrd/Screensavers](https://github.com/phoenixbyrd/Screensavers). I (Botspot) saw great potential in Phoenixbyrd's simplistic screensaver collection. I took what Phoenixbyrd did, added several screensavers, took screenshots, and reworked all the scripts to interface with a GUI of my own design.

### To add your own screensaver:
Be aware that **3D** screensavers don't seem to work. Examples include Leonardo Da Vinci, Space, river, nature, and underwater.
- Duplicate an existing screensaver folder and rename it. For example, copy `/home/pi/Screensavers/Bubbles` to `/home/pi/Screensavers/newScreensaver`
- Delete the screenshot images, and you might as well get rid of `settings.sh`.
- Drop in whatever files are necessary for your screensaver to work. Usually, only a single .scr file is needed, but others may require some fonts.
- Edit the `install.sh` script to copy your files to the wine prefix. Try to use relative paths (instead of absolute paths like `/home/pi`), as demonstrated in Botspot's scripts.
- Edit the `run.sh` script to run your desired .scr file from the wine prefix. Example syntax:  
`WINEPREFIX=~/.screensavers wine fireplace.scr /s` <-- replace "fireplace.scr" with the screensaver executable you are using.
- At this point, the screensaver should install and preview fine from the GUI.
- Last of all, take a screenshot of your screensaver in action, and copy the screensaver to your folder. Don't worry about renameing it or resizing it - the `gui` script will take care of this for you. (You may have to install `imagemagick` first for this to work.)

### Download official Windows screensavers here:
https://www.google.com/search?q=site%3Ahttps%3A%2F%2Fwww.pconlife.com+*.scr

### Find 3rd party Windows screensavers here:
https://www.screensaversplanet.com/
