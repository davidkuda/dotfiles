#!/usr/bin/env bash

COLOR_TEXT="0xFFe0def4"
COLOR_SUBTLE="0xFF908caa"
COLOR_MUTED="0xFF6e6a86"
COLOR_ROSE="0xFFea9a97"
COLOR_PINE="0xFF3e8fb0"


# $NAME == aerospace.2

# "2"
active_space=$(aerospace list-workspaces --focused)


# "2"
label_name=$(echo $NAME | sed 's/aerospace.//')

# "Ghostty"
apps=$( \
	aerospace list-windows \
		--format '%{app-name}' \
		--workspace $label_name \
	| awk '{print $1}' \
	| paste -sd"|" - \
)

# "1\n2"
spaces_with_windows=$( \
	aerospace list-workspaces \
	--monitor all \
	--empty no \
)

# 3\n4\n5\n6\n7\n8\n9
empty_spaces=$( \
	aerospace list-workspaces \
	--monitor all \
	--empty \
)


# if space has windows, make it visible:
if echo "$spaces_with_windows" | grep -qx "$label_name"; then
	sketchybar \
	--set $NAME \
		drawing=on \
		background.border_width=0 \
		label="$label_name $apps"
fi

# if space is empty, hide:
if echo "$empty_spaces" | grep -qx "$label_name"; then
	sketchybar \
	--set $NAME \
		drawing=off
fi

# if space is focused, highlight with a border:
if [[ $NAME == "aerospace.$active_space" ]]; then
	sketchybar \
	--set $NAME \
		drawing=on \
		background.border_color=$COLOR_ROSE \
		background.border_width=1 \
		label="$label_name $apps"
fi

