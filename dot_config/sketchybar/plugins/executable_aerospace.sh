#!/usr/bin/env bash

COLOR_TEXT="0xFFe0def4"
COLOR_SUBTLE="0xFF908caa"
COLOR_MUTED="0xAA6e6a86"


# text if active:
active_space=$(aerospace list-workspaces --focused)
sketchybar --set space.$active_space label.color=$COLOR_TEXT

# subtle if space has windows:
has_windows=$( \
    aerospace list-workspaces \
	--monitor all \
	--empty no \
	--visible no \
)
for space in $has_windows; do
    sketchybar --set space.$space label.color=$COLOR_SUBTLE
done

# muted if space is empty:
empty=$( \
    aerospace list-workspaces \
	--monitor all \
	--empty \
	--visible no \
)
for space in $empty; do
    sketchybar --set space.$space label.color=$COLOR_MUTED
done

# if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
#     sketchybar --set $NAME label.color=$COLOR_TEXT
# else
#     sketchybar --set $NAME label.color=$COLOR_MUTED
# fi

