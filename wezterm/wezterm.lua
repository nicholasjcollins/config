local wezterm = require("wezterm")
config = wezterm.config_builder()

wezterm.font("DejaVuSansM Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- /Users/nick/Library/Fonts/DejaVuSansMNerdFont-Regular.ttf, CoreText

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = "Gruvbox Dark (Gogh)",
	font_size = 15,
	window_padding = {
		left = 3,
		right = 3,
		top = 3,
		bottom = 3,
	},
}
return config
