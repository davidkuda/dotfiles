#!/usr/bin/env bash

COLOR_TEXT="0xFFe0def4"
COLOR_SUBTLE="0xFF908caa"
COLOR_MUTED="0xFF6e6a86"

active_space=$(aerospace list-workspaces --focused)

echo "name => $NAME; active_space => aerospace.$active_space"

if [[ $NAME == "aerospace.$active_space" ]]; then
	echo oorah
	sketchybar \
	--set aerospace.$active_space \
	background.border_color=$COLOR_MUTED \
	background.border_width=1
else
	sketchybar \
	--set $NAME \
	background.border_width=0
fi

