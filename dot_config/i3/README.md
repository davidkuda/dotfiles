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
# update: libinput Accel Speed (337)
xinput --set-prop 10 337 0.7
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
```
