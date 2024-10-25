local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'rose-pine-moon'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 18
config.line_height = 1.2
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.initial_rows = 400
config.initial_cols = 400

return config
