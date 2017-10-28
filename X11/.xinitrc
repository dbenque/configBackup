#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

# config merge
#xrdb -merge ~/.Xresources

# screensaver
xscreensaver -no-splash &

#multiple screen
#xrandr --output VGA1 --left-of eDP1 --auto
#.screenlayout/finally3screen.sh

#wallpaper
feh --bg-fill ~/.wallpapers

#keybord Layout
#setxkbmap -model pc105 -layout fr

#transparency
compton -b

#conky
conky -c ~/.config/conky/conkyrc

#keyboar layout switch
setxkbmap -layout us,fr -option grp:alt_shift_toggle

#Windows Manager (already launched by lightdm
#exec i3
#exec i3 --force-xinerama -V >>~/.i3/i3log 2>&1
