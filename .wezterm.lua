local wezterm = require 'wezterm';

return {
  colors = {
    foreground = "#e7e9e3",
    background = "#1e1e1e",

    cursor_bg = "#e7e9e3",
    cursor_fg = "#11131a",
    cursor_border = "#5d8df7",

    -- tmux copy-mode friendly selection
    selection_bg = "#2a2f3a", -- subtle highlight (dark blue-gray)
    selection_fg = "#c5cbd6", -- keep original foreground

    ansi = {
      "#11131a", -- black
      "#fe1c57", -- red
      "#2ed8a2", -- green
      "#f2d16b", -- yellow
      "#5d8df7", -- blue
      "#A61F96", -- magenta
      "#4fc1f2", -- cyan
      "#e7e9e3", -- white
    },

    brights = {
      "#11131a",
      "#ff4b78",
      "#57e0c4",
      "#ffe07a",
      "#7aa0ff",
      "#d06acf",
      "#7ed1ff",
      "#ffffff",
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
