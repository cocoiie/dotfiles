-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'Mononoki Nerd Font'
config.font_size = 14
config.line_height = 1.2
config.hide_tab_bar_if_only_one_tab = true

return config
