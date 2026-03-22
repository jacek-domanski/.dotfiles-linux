local wezterm = require("wezterm")
local act = wezterm.action

wezterm.on("smart-split", function(window, pane)
	local dims = pane:get_dimensions()

	if dims.pixel_width < dims.pixel_height then
		window:perform_action(act.SplitVertical({ domain = "CurrentPaneDomain" }), pane)
	else
		window:perform_action(act.SplitHorizontal({ domain = "CurrentPaneDomain" }), pane)
	end
end)

return {
	--[[
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
--]]
	use_fancy_tab_bar = false,
	color_scheme = "tokyonight_night",
	colors = {
		tab_bar = {
			background = "#1a1b26",

			active_tab = {
				bg_color = "#24283b",
				fg_color = "#7aa2f7",
				intensity = "Bold",
			},

			inactive_tab = {
				bg_color = "#1f2130",
				fg_color = "#565f89",
			},

			inactive_tab_hover = {
				bg_color = "#24283b",
				fg_color = "#c0caf5",
				italic = true,
			},

			new_tab = {
				bg_color = "#1a1b26",
				fg_color = "#565f89",
			},

			new_tab_hover = {
				bg_color = "#24283b",
				fg_color = "#7aa2f7",
			},
		},
	},
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {

		{
			key = "a",
			mods = "CTRL|LEADER",
			action = act.SendKey({ key = "a", mods = "CTRL" }),
		},
		{
			key = "s",
			mods = "LEADER",
			action = act.EmitEvent("smart-split"),
		},
		{
			key = "w",
			mods = "LEADER",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
		{
			key = "=",
			mods = "CTRL",
			action = act.AdjustPaneSize({ "Left", 0 }),
		},

		-- LEFT: split left/right, then focus left
		{
			key = "LeftArrow",
			mods = "LEADER",
			action = act.Multiple({
				act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
				act.ActivatePaneDirection("Left"),
			}),
		},

		-- RIGHT: split left/right, then focus right
		{
			key = "RightArrow",
			mods = "LEADER",
			action = act.Multiple({
				act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
				act.ActivatePaneDirection("Right"),
			}),
		},

		-- UP: split top/bottom, then focus up
		{
			key = "UpArrow",
			mods = "LEADER",
			action = act.Multiple({
				act.SplitVertical({ domain = "CurrentPaneDomain" }),
				act.ActivatePaneDirection("Up"),
			}),
		},

		-- DOWN: split top/bottom, then focus down
		{
			key = "DownArrow",
			mods = "LEADER",
			action = act.Multiple({
				act.SplitVertical({ domain = "CurrentPaneDomain" }),
				act.ActivatePaneDirection("Down"),
			}),
		},

		-- ESC: cancel
		{
			key = "Escape",
			mods = "LEADER",
			action = act.PopKeyTable,
		},
	},

	-- 🔧 Critical tmux-related behavior
	bold_brightens_ansi_colors = false,

	-- Optional but recommended
	-- enable_tab_bar = false,
	hide_mouse_cursor_when_typing = true,

	-- Font settings
	font = wezterm.font("FiraMono Nerd Font"),
	font_size = 10.0,

	-- Disable top menu bar
	window_decorations = "RESIZE",
}
