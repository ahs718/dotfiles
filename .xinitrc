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

# monitor config
xrandr --output DVI-D-1 --mode 1920x1080 --pos 1967x0 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off
xsetroot -cursor_name left_ptr

# wallpaper config
DISPLAY=:0 feh --bg-scale --no-fehbg '/home/ahs/.images/yosemite2.jpg' &
DISPLAY=:1 feh --bg-scale --no-fehbg '/home/ahs/.images/yosemite2.jpg' &

# startup processes
export PATH="/home/ahs/.local/bin:$PATH"
picom -b &
eww daemon &
volctl &
nm-applet &
mkfifo /tmp/vol-icon && ~/.config/qtile/scripts/vol_icon.sh &

qtile start
