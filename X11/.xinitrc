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
xrdb -merge ~/.Xresources

# screensaver
xscreensaver -no-splash &

#multiple screen
xrandr --output VGA1 --left-of eDP1 --auto

#wallpaper
feh --bg-fill ~/.wallpapers

#keybord Layout
setxkbmap -model pc105 -layout fr

#transparency
compton -b

conky -c ~/.config/conky/conkyrc

#Windows Manager
exec i3
