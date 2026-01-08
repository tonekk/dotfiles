local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font configuration (matching Kitty)
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 15.0

-- Copy on select (matching Kitty)
config.selection_word_boundary = " \t\n{}[]()\"'`,;:@│"
config.automatically_reload_config = true

-- Base16 Tomorrow Night color scheme (matching Kitty)
config.colors = {
	foreground = "#c5c8c6",
	background = "#1d1f21",
	cursor_bg = "#c5c8c6",
	cursor_fg = "#1d1f21",
	cursor_border = "#c5c8c6",
	selection_fg = "#1d1f21",
	selection_bg = "#c5c8c6",

	ansi = {
		"#1d1f21", -- black (color0)
		"#cc6666", -- red (color1)
		"#b5bd68", -- green (color2)
		"#f0c674", -- yellow (color3)
		"#81a2be", -- blue (color4)
		"#b294bb", -- magenta (color5)
		"#8abeb7", -- cyan (color6)
		"#c5c8c6", -- white (color7)
	},
	brights = {
		"#969896", -- bright black (color8)
		"#cc6666", -- bright red (color9)
		"#b5bd68", -- bright green (color10)
		"#f0c674", -- bright yellow (color11)
		"#81a2be", -- bright blue (color12)
		"#b294bb", -- bright magenta (color13)
		"#8abeb7", -- bright cyan (color14)
		"#ffffff", -- bright white (color15)
	},

	-- Extended base16 colors (matching Kitty)
	indexed = {
		[16] = "#de935f",
		[17] = "#a3685a",
		[18] = "#282a2e",
		[19] = "#373b41",
		[20] = "#b4b7b4",
		[21] = "#e0e0e0",
	},

	-- Tab bar colors
	tab_bar = {
		background = "#282a2e",
		active_tab = {
			bg_color = "#1d1f21",
			fg_color = "#c5c8c6",
		},
		inactive_tab = {
			bg_color = "#282a2e",
			fg_color = "#b4b7b4",
		},
		inactive_tab_hover = {
			bg_color = "#373b41",
			fg_color = "#c5c8c6",
		},
	},
}

-- Window appearance
config.window_decorations = "RESIZE"
config.native_macos_fullscreen_mode = true
config.hide_tab_bar_if_only_one_tab = true

-- Copy on select behavior
config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action.CompleteSelectionOrOpenLinkAtMouseCursor("ClipboardAndPrimarySelection"),
	},
}

-- Key bindings (tmux shortcuts matching skhd config)
config.keys = {
	-- Cmd+H → previous tmux window (Ctrl-b p)
	{ key = "h", mods = "CMD", action = wezterm.action.SendString("\x02p") },
	-- Cmd+L → next tmux window (Ctrl-b n)
	{ key = "l", mods = "CMD", action = wezterm.action.SendString("\x02n") },
	-- Cmd+K → tmux copy mode / scroll up (Ctrl-b Up)
	{ key = "k", mods = "CMD", action = wezterm.action.SendString("\x02\x1b[A") },
	-- Cmd+J → page down
	{ key = "j", mods = "CMD", action = wezterm.action.SendKey({ key = "PageDown" }) },
	-- Cmd+T → new tmux window (Ctrl-b c)
	{ key = "t", mods = "CMD", action = wezterm.action.SendString("\x02c") },
	-- Cmd+X → kill tmux pane (Ctrl-b x)
	{ key = "x", mods = "CMD", action = wezterm.action.SendString("\x02x") },
	-- Cmd+I → tmux split horizontal (Ctrl-b F1)
	{ key = "i", mods = "CMD", action = wezterm.action.SendString("\x02\x1bOP") },
	-- Cmd+Z → tmux zoom pane (Ctrl-b z)
	{ key = "z", mods = "CMD", action = wezterm.action.SendString("\x02z") },
	-- Cmd+Q → escape
	{ key = "q", mods = "CMD", action = wezterm.action.SendKey({ key = "Escape" }) },
	-- Cmd+S → Ctrl+S (save in vim)
	{ key = "s", mods = "CMD", action = wezterm.action.SendKey({ key = "s", mods = "CTRL" }) },
	-- Cmd+W → disabled (matching Kitty no_op)
	{ key = "w", mods = "CMD", action = wezterm.action.DisableDefaultAssignment },
	-- Shift+Enter for Claude Code
	{ key = "Enter", mods = "SHIFT", action = wezterm.action.SendString("\x1b\r") },
}

return config
