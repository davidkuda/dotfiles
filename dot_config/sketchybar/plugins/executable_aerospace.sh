#!/usr/bin/env bash

COLOR_TEXT="0xFFe0def4"
COLOR_SUBTLE="0xFF908caa"
COLOR_MUTED="0xFF6e6a86"


echo something

# remove empty spaces:
empty=$( \
	aerospace list-workspaces \
	--monitor all \
	--empty \
	--visible no \
)
for space in $empty; do
    sketchybar --remove space.$space
done


# add spaces with windows:
has_windows=$( \
	aerospace list-workspaces \
	--monitor all \
	--empty no \
	--visible no \
)
for space in $has_windows; do
	sketchybar \
	--add space.$space \
	label.color=$COLOR_SUBTLE \
	background.border_width=0
done

# highlight active window:
active_space=$(aerospace list-workspaces --focused)
sketchybar \
	--add space.$active_space \
	label.color=$COLOR_TEXT \
	background.border_color=$COLOR_MUTED \
	background.border_width=1

