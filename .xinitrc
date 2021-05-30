#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# i3 WM
# exec i3

# DWM status bar
/home/zero/dwm-bar/dwm_bar.sh &

# Display Configuration
/home/zero/.screenlayout/layout.sh &

# Picom Compositor
picom -f &

# Wallpaper
nitrogen --restore &

# Retart
while true; do
	dwm >/dev/null 2>&1
done

# Execute Dynamic Window Manager
exec dwm









