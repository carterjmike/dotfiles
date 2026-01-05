#!/bin/bash

set +e

dbus-update-activation-environment --all 2>&1 > /dev/null &

waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css 2>&1 > /dev/null & 

nm-applet --indicator 2>&1 > /dev/null &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 2>&1 > /dev/null &

gnome-keyring-daemon --start --components=secret 2>&1 > /dev/null &
