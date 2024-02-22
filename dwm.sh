#! /bin/bash

# basic utils
sudo apt install neofetch vim curl htop feh scrot flameshot firefox-esr slock xorg xinit build-essential libx11-dev libxft-dev libxinerama-dev xcompmgr xautolock pipewire alsa-utils -y && \

# DWM git clone
mkdir ~/.suckless && \

git clone https://github.com/Kouei-Lin/dwm-dotfiles ~/.suckless && \

# DWM make install
cd ~/.suckless/dwm && sudo make clean install && \

cd ~/.suckless/st && sudo make clean install && \

cd ~/.suckless/dmenu && sudo make clean install && \

cd ~/.suckless/dwmblocks && sudo make clean install && \

# .xinitrc
echo "
dbus-launch --exit-with-session

dwmblocks &

~/.fehbg &

xcompmgr &

xautolock -time 10 -locker slock &

exec dwm
" > ~/.xsession && \

# startx
startx && \

# feh background
feh --bg-fill ~/.suckless/bg/bg.jpg

