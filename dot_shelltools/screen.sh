# this is useful when working on 28inch 4k screens with linux and changing to laptop screen
screen_get() {
    gsettings get org.gnome.desktop.interface cursor-size
    gsettings get org.gnome.desktop.interface text-scaling-factor
}

screenl() {
    gsettings set org.gnome.desktop.interface cursor-size 32
    gsettings set org.gnome.desktop.interface text-scaling-factor 1.5
    # sed -i 's/config.font_size = 12/config.font_size = 21/' $HOME/.config/wezterm/wezterm.lua
}

screenm() {
    gsettings set org.gnome.desktop.interface cursor-size 24
    gsettings set org.gnome.desktop.interface text-scaling-factor 1
    wezterm --config font_size=12
    # sed -i 's/config.font_size = 21/config.font_size = 12/' $HOME/.config/wezterm/wezterm.lua
}
