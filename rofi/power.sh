#!/bin/sh

CHOSEN=$(printf " Shutdown\n󰑓 Reboot\n󰤄 Sleep\n Lock" | rofi -dmenu)

case "$CHOSEN" in
	" Shutdown") poweroff ;;
	"󰑓 Reboot") reboot ;;
    "󰤄 Sleep") systemctl suspend;;   
	" Lock") hyprlock ;;
	*) exit 1 ;;
esac