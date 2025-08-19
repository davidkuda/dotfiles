How to change some settings in i3:


### xrandr: Screen Settings
```sh
# enable attached screen:
xrandr --output HDMI-1 --auto
xrandr --output HDMI-1 --right-of eDP-1

# set display as primary screen:
xrandr --output HDMI-1 --primary

# disable laptop screen:
xrandr --output eDP-1 --off

# enable laptop screen:
xrandr --output eDP-1 --auto
xrandr --output eDP-1 --left-of HDMI-1
```


### xinput: mouse settings:
```sh
# update mouse settings (for 4k screens):
xinput --list --short
xinput list-props 10

# update: Coordinate Transformation Matrix (191)
xinput --set-prop 10 191 2 0 0 0 2 0 0 0 1
xinput --set-prop 10 "Coordinate Transformation Matrix" 2 0 0 0 2 0 0 0 1
# or:
xinput --set-prop "Apple Inc. Magic Trackpad" "Coordinate Transformation Matrix" 2 0 0 0 2 0 0 0 1

# update: libinput Accel Speed (337)
xinput --set-prop 10 337 0.7
xinput --set-prop 10 "libinput Accel Speed" 0.5

xinput --set-prop "VEN_06CB:00 06CB:CEEC Touchpad" "libinput Natural Scrolling Enabled" 1

```


### anything else:
```sh
# use EU keyboard for äëöü (alt + letter):
setxkbmap -layout eu

# stdout to clipboard:
alias ccp='xclip -selection clipboard'
echo hi | ccp

# screenshots:
flameshot gui

# activate numlock:
sudo apt update
sudo apt install numlockx
numlock on
echo 'exec --no-startup-id numlockx on' >> $HOME/.config/i3/config

# sadly, my monitor won't turn on after standy, therefore, disable standy:
# Prevent monitor from turning off or going into power-saving mode:
# Disable screen blanking
xset s noblank
# Disable the X screensaver
xset s off
# Disable DPMS (Display Power Management Signaling)
xset -dpms

# or in one line:
xset -dpms; xset s off; xset s noblank
```
