-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.default_prog = { 'pwsh.exe' }
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Everforest Dark (Gogh)'
config.font = wezterm.font('Hack Nerd Font', {weight = 700})
config.font_size = 12
config.window_decorations = "RESIZE" --"INTEGRATED_BUTTONS|RESIZE"
config.use_fancy_tab_bar = true

-- This is used to make my foreground (text, etc) brighter than my background
config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.5,
  brightness = 1.5,
}

-- This is used to set an image as my background 
config.background = {
    {
        source = { File = {path = 'C:/Users/Dwcks Dinh/Pictures/wallhaven-4988l8_1920x1080.png', speed = 0.2}},
        opacity = 0.96,
        -- width = "Contain",
        -- repeat_y = "NoRepeat",
        -- height = "100%",
        hsb = {brightness = 0.06},
    }
}

-- and finally, return the configuration to wezterm
return config
