```sh
# set display as primary screen:
xrandr --output HDMI-1 --primary

# disable laptop screen:
xrandr --output eDP-1 --off

# enable laptop screen:
xrandr --output eDP-1 --auto
xrandr --output eDP-1 --left-of HDMI-1


# update mouse settings (for 4k screens):
xinput --list --short
xinput list-props 10
# update: Coordinate Transformation Matrix (191)
xinput --set-prop 10 191 2 0 0 0 2 0 0 0 1
# update: libinput Accel Speed (337)
xinput --set-prop 10 337 0.5


# screenshots:
flameshot gui
```
