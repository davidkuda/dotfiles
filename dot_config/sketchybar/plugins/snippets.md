### colored background:

```sh


for sid in $(aerospace list-workspaces --all); do
    sketchybar \
        --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=$COLOR_IRIS \
        background.corner_radius=7 \
        background.height=24 \
        background.drawing=off \
        label="$sid" \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

sketchybar \
    --set space.$(aerospace list-workspaces --focused) \
    background.drawing=on \
    background.padding_left=10 \
    background.padding_right=10


# plugins/aerospace.sh

#!/usr/bin/env bash
if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi
```
