#!/usr/bin/env bash

COLOR_TEXT="0xFFe0def4"
COLOR_MUTED="0xAA6e6a86"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME label.color=$COLOR_TEXT
else
    sketchybar --set $NAME label.color=$COLOR_MUTED
fi
