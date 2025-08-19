xinput --list --short

read 'input_id? which input ID do you want to update? '

echo "$input_id"

xinput --set-prop $input_id "Coordinate Transformation Matrix" 1.3 0 0 0 1.3 0 0 0 1

xinput --set-prop $input_id "libinput Accel Speed" 0.3

# Disable screen blanking
xset s noblank

# Disable the X screensaver
xset s off

# Disable DPMS (Display Power Management Signaling)
xset -dpms

