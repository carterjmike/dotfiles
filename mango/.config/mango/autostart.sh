#!/bin/bash

set +e

dbus-update-activation-environment --all > /dev/null 2>&1 &

waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css > /dev/null 2>&1 & 

nm-applet --indicator > /dev/null 2>&1 &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 > /dev/null 2>&1 &

gnome-keyring-daemon --start --components=secret > /dev/null 2>&1 &
