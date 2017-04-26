#!/bin/sh
xrandr --setprovideroutputsource 1 0

xrandr --output VIRTUAL1 --off --output HDMI-1-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --off --output eDP1 --mode 1920x1080 --pos 3840x0 --rotate normal --output VGA1 --mode 1920x1080 --pos 0x0 --rotate normal
