#!/bin/sh


COLOR_ROSE="0xAAeb6f92"
COLOR_PINE="0xAA3e8fb0"
COLOR_IRIS="0xAAc4a7e7"

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
	COLOR=$COLOR_ROSE
	ICON=
	LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
	COLOR=$COLOR_IRIS
	ICON=
	LABEL=$IP_ADDRESS
else
	COLOR=$COLOR_ROSE
	ICON=
	LABEL="Not Connected"
fi

sketchybar --set $NAME background.color=$COLOR \
	icon=$ICON \
	label="$LABEL"

sketchybar --set ip_address \
    background.color="0xAAc4a7e7" \
	icon= \
	label=123.123.123.123
