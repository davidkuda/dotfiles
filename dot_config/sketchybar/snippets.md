Inspiration: https://github.com/FelixKratz/SketchyBar/discussions/47


WIP:

IP Address
https://github.com/FelixKratz/SketchyBar/discussions/12?sort=top#discussioncomment-6793056

```sh
sketchybar \
    --add item  ip_address right \
    --set ip_address script="$PLUGIN_DIR/netip.sh" \
        update_freq=30 \
        padding_left=2 \
        padding_right=8 \
        background.border_width=0 \
        background.corner_radius=6 \
        background.height=24 \
        icon.highlight=on \
        label.highlight=on \
   --subscribe ip_address wifi_change
```
