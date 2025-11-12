local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "catppuccin-macchiato"
config.color_scheme = "GruvboxDark"
-- config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = 600 })
config.font_size = 14
config.line_height = 0.95
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW" -- remove title bar
config.initial_cols = 142 -- startup window sizing
config.initial_rows = 44 -- -||-
config.max_fps = 120

-- by default (on macos) left option key is treated as the ALT key
-- this disables that behaviour and treats it as option instead
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

config.tab_max_width = 32
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
	{
		key = "k",
		mods = "SHIFT|CMD",
		action = wezterm.action.SplitPane({
			direction = "Up",
			size = { Percent = 50 },
		}),
	},
}

return config
