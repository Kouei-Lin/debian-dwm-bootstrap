# Debian DWM Bootsrap
Simple script to install suckless [DWM](https://dwm.suckless.org/) on bare minimal Debain 12.

# Prerequisite
Make sure the user has **sudo** previlidge and the machine has access to the internet.

## Sudo

On minimal Debian, sudo is not pre-installed.

```
$ apt install sudo
$ usermod -aG sudo username
```
Swap username with your actual username, reboot the machine and loging as user.

# Clone the repo

```
$ sudo apt install git
$ git clone https://github.com/Kouei-Lin/debian-dwm-bootstrap ~/debian-dwm-bootstrap
```

# Run the script

```
$ cd ~/debian-dwm-bootstrap
$ chmod +x dwm.sh
$ ./dwm.sh
```

# Start DWM

Once the script is done, the script should auto start into DWM, if not, type in `startx` in the terminal to start DWM.

# Wallpaper
I set wallpaper to the `debian.jpg` in the repo. 

Set the wallpaper to whatever you liek using `feh --bg-fill /path/to/your/image.jpg`.

# DWM Patches
Feel free to patch your DWM visting [DWM Patches](https://dwm.suckless.org/patches/).
