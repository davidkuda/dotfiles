#!/usr/bin/env zsh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar home 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar DP-1-1 2>&1 | tee -a /tmp/DP-1-1.log & disown
# polybar DP-1-8 2>&1 | tee -a /tmp/DP-1-8.log & disown
polybar laptop 2>&1 | tee -a /tmp/polybar2.log & disown
polybar noser 2>&1 | tee -a /tmp/polybar-noser.log & disown
polybar home 2>&1 | tee -a /tmp/polybar-home.log & disown

echo "Bars launched..."
