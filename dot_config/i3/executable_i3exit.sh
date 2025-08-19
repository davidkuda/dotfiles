#!/usr/bin/env zsh

choice="$(printf "Logout\nReboot\nShutdown\nSuspend\nLock" | rofi -dmenu -i -p "Power")"

case "$choice" in
  Logout)   i3-msg exit ;;
  Reboot)   systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
  Suspend)  systemctl suspend ;;
  Lock)     loginctl lock-session ;;
esac

