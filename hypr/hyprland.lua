local var_mainMod = "SUPER"
local var_terminal = "kitty"
local var_fileManager = "dolphin"
local var_menu = "rofi -show drun"

-- This config is a STUB! This should never be generated.

-- Use the default lua config from https://github.com/hyprwm/Hyprland/blob/main/example/hyprland.lua

-- MONITOR
hl.monitor({
	output = "",
	mode = "preffered",
	position = "auto",
	scale = "auto",
})
hl.bind(var_mainMod .. " + Q", hl.dsp.exec_cmd(var_terminal))
hl.bind(var_mainMod .. " + C", hl.dsp.window.close())
hl.bind(
	var_mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(var_mainMod .. " + E", hl.dsp.exec_cmd(var_fileManager))
hl.bind(var_mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(var_mainMod .. " + R", hl.dsp.exec_cmd("var_menu"))
hl.bind(var_mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(var_mainMod .. " + mouse_left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(var_mainMod .. " + mouse_right", hl.dsp.focus({ workspace = "e+1x" }))

-- bindl = , switch:Lid Switch, exec, hyprlock -q

-- execonce
hl.bind(var_mainMod .. " + F", hl.dsp.window.fullscreen({ mode = 1, action = "toggle" }))

hl.on("hyprland.start", function()
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
	hl.exec_cmd("mako")
	hl.exec_cmd("hyprlauncher -d")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("fastfetch -d")
end)

-- bindWorkSpace
hl.bind(var_mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(var_mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(var_mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(var_mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(var_mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(var_mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(var_mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(var_mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(var_mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))

-- Move active window to a workspace with mainMod + CONTROL + [0-9]
-- hl.bind(var_mainMod .. "+$control + $w1", hl.dsp.window.move({ workspace = 1 }))
-- hl.bind(var_mainMod .. "+$control + $w2", hl.dsp.window.move({ workspace = 2 }))
-- hl.bind(var_mainMod .. "+$control + $w3", hl.dsp.window.move({ workspace = 3 }))
-- hl.bind(var_mainMod .. "+$control + $w4", hl.dsp.window.move({ workspace = 4 }))
-- hl.bind(var_mainMod .. "+$control + $w5", hl.dsp.window.move({ workspace = 5 }))
-- hl.bind(var_mainMod .. "+$control + $w6", hl.dsp.window.move({ workspace = 6 }))

-- bindl
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("hyprlock --inmediate"), {
	locked = true,
})
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("systemctl suspend"), {
	locked = true,
})

-- audiobindl

-- Mute audio (l = works even when the screen is locked)
hl.bind("code:121", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {
	locked = true,
})

-- Decrease volume by 5% (e = repeats smoothly if you hold the key down)
hl.bind("code:122", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {
	locked = true,
	repeating = true,
})

-- Increase volume by 5% (capped at 100% max so you don't blow your speakers)
hl.bind("code:123", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"), {
	locked = true,
	repeating = true,
})

-- brightbindl

-- Decrease brightness by 5%
hl.bind("code:232", hl.dsp.exec_cmd("brightnessctl set 5%-"), {
	locked = true,
	repeating = true,
})

-- Increase brightness by 5%
hl.bind("code:233", hl.dsp.exec_cmd("brightnessctl set +5%"), {
	locked = true,
	repeating = true,
})

-- generalconfigs
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 20,
		border_size = 2,
		col = {
			active_border = {
				colors = { "rgba(34ccffee)", "rgba(00ff99ee)" },
				angle = 45,
			},
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},
})

-- wayland
hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
	general = {
		gaps_in = 7,
		gaps_out = 7,
	},
	input = {
		follow_mouse = 1,
		touchpad = {
			natural_scroll = false,
			disable_while_typing = false,
		},
		sensitivity = 0,
	},
	decoration = {
		rounding = 6,
	},
})

-- cursor
hl.env("XCURSOR_THEME", "breeze_cursors")
hl.env("XCURSOR_SIZE", "24")

-- animations

-- {

-- enabled = yes, please :)

-- Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

-- bezier = easeOutQuint,0.23,1,0.32,1

-- bezier = easeInOutCubic,0.65,0.05,0.36,1

-- bezier = linear,0,0,1,1

-- bezier = almostLinear,0.5,0.5,0.75,1.0

-- bezier = quick,0.15,0,0.1,1

-- animation = global, 1, 10, default

-- animation = border, 1, 5.39, easeOutQuint

-- animation = windows, 1, 4.79, easeOutQuint

-- animation = windowsIn, 1, 4.1, easeOutQuint, popin 87%

-- animation = windowsOut, 1, 1.49, linear, popin 87%

-- animation = fadeIn, 1, 1.73, almostLinear

-- animation = fadeOut, 1, 1.46, almostLinear

-- animation = fade, 1, 3.03, quick

-- animation = layers, 1, 3.81, easeOutQuint

-- animation = layersIn, 1, 4, easeOutQuint, fade

-- animation = layersOut, 1, 1.5, linear, fade

-- animation = fadeLayersIn, 1, 1.79, almostLinear

-- animation = fadeLayersOut, 1, 1.39, almostLinear

-- animation = workspaces, 1, 1.94, almostLinear, slide

-- animation = workspacesIn, 1, 1.21, almostLinear, slide

-- animation = workspacesOut, 1, 1.94, almostLinear, slide

-- }

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

-- HyprMod managed settings
require("hyprland-gui")
