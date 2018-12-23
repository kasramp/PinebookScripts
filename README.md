# PinebookScripts
A set of custom scripts for Pinebook to make it more stable and usable


## General notes

+ To change default terminal
```bash
$ sudo update-alternatives --config x-terminal-emulator
```
+ Enable session selection for Armbian. Just edit the file `sudo vim /etc/lightdm/lightdm-gtk-greeter.conf` and add
```
indicators = ~session;
```
