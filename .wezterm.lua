local wezterm = require 'wezterm';

return {
  colors = {
    foreground = "#cccccc",
    background = "#1e1e1e",

    cursor_bg = "#ffffff",
    cursor_fg = "#11131a",
    cursor_border = "#ffffff",

    -- tmux copy-mode friendly selection
    selection_bg = "#3a3d41", -- subtle highlight (dark blue-gray)
    selection_fg = "#c5cbd6", -- keep original foreground

    ansi = {
      "#000000", -- black
      "#cd3131", -- red
      "#2ed8a2", -- green
      "#e5e510", -- yellow
      "#2472c8", -- blue
      "#bc3fbc", -- magenta
      "#11a8cd", -- cyan
      "#e5e5e5", -- white
    },

    brights = {
      "#666666",
      "#f14c4c",
      "#23d18b",
      "#f5f543",
      "#3b8eea",
      "#d670d6",
      "#29b8db",
      "#e5e5e5",
    },
  },

  -- 🔧 Critical tmux-related behavior
  bold_brightens_ansi_colors = false,

  -- Optional but recommended
  enable_tab_bar = false,
  hide_mouse_cursor_when_typing = true,

	-- Font settings
  font = wezterm.font("FiraMono Nerd Font"),
  font_size = 10.0,

	-- Disable top menu bar
	window_decorations = "NONE",

  -- Run tmux on startup
  default_prog = { "tmux" },
}
