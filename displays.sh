#!/bin/bash

if [ $(xrandr --listactivemonitors | grep -v ^Monitors | wc -l) = '1' ]; then
	xrandr --output DP-4 --mode 1920x1080 --rate 143.85 --output HDMI-0 --mode 1920x1080 --rate 60.00 --same-as DP-4
	gsettings set org.gnome.desktop.notifications show-banners false
else
	xrandr --output DP-4 --mode 1920x1080 --rate 143.85 --output HDMI-0 --off
	gsettings set org.gnome.desktop.notifications show-banners true
fi
