-- Generic floating position
hl.window_rule({ match = { float = true }, persistent_size = true })

-- Picture-in-Picture
hl.window_rule({
  match             = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
  float             = true,
  keep_aspect_ratio = true,
  size              = { "max(monitor_w, monitor_h)*0.25", "min(monitor_w, monitor_h)*0.25" },
  pin               = true,
})

-- Workspace
local gamingWorkspace = "name:Gaming"
local windowsWorkspace = "name:Windows"

hl.workspace_rule({
  workspace = gamingWorkspace,
  animation = "fade",
})

hl.workspace_rule({
  workspace = windowsWorkspace,
  animation = "fade",
})

hl.window_rule({ match = { class = "^(steam)$"}, center = true })
hl.window_rule({ match = { class = "^(steam)$", title = "^(Friends List)$" }, float = true })
hl.window_rule({ match = { class = "^(steam)$", title = "^(Launching\\.{3})$" }, float = true, center = true, workspace = gamingWorkspace })
hl.window_rule({ match = { class = "^(steam_app.*)$"}, fullscreen = true, workspace = gamingWorkspace })

hl.window_rule({ match = { title = "^(Skyrim Special Edition)$"}, fullscreen = true })
hl.window_rule({ match = { class = "^(Terraria.bin.x86_64|RimWorldLinux|Minecraft.*|com.mojang.minecraft)$", title = "^(Minecraft.*)" }, fullscreen = true, workspace = gamingWorkspace })
hl.window_rule({ match = { class = "^(VirtualBox Machine|Vmware)$"}, fullscreen = true, workspace = windowsWorkspace })

-- Steam Dropdown Menu Workaround
hl.window_rule({
	match = {
		float = true,
		title = ".*",
		xwayland = 1,
	},

	center = false,
})

hl.window_rule({
	name = "center-floating",
	match = {
		class = ".*",
		title = ".*",
		float = true,
		xwayland = 0,
	},

	center = true,
})

-- Floating for Launcher
hl.window_rule({
  match     = { class = "^(org.prismlauncher.PrismLauncher)$"},
  float     = true,
  size      = { 1000, 800 },
})

hl.window_rule({
  match     = {
    class   = "^(org.prismlauncher.PrismLauncher)$",
    title   = "^(New Instance.*|Console window.*|Settings.*)"
  },
  float     = true,
  size      = { 800, 600 },
})

hl.window_rule({
  match     = {
    class   = "^(org.prismlauncher.PrismLauncher)$",
    title   = "^(Please wait.*)"
  },
  float     = true,
  size      = { 250, 150 },
})

hl.window_rule({
  match = {
    class = "^(org.pulseaudio.pavucontrol|nwg-look)"
  },
  float = true,
  size  = { 400, 400}
})

-- Opacity Overrides
local terminals = "^(kitty)$"

hl.window_rule({ match = { class = terminals }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(mpv)$" }, opacity = "1.0 override" })

-- Float for tui from waybar
hl.window_rule({ match = { class = "^(impala|wiremix|calcurse|music)$"}, float = true, size = { 630, 550 } })

-- Float Common Modals
local modalMatches = {
  { title = "^(Open|Authentication Required|Add Folder to Workspace|Choose Files|Save As|Confirm to replace files|File Operation Progress)$" },
  { initial_title = "^(Open File)$" },
  { class = "^([Xx]dg-desktop-portal-gtk)$" },
  { title = "^(File Upload|Choose wallpaper|Library)(.*)$" },
  { class = "^(.*dialog.*)$" },
  { title = "^(.*dialog.*)$" },
  { class = "^(hyprland-share-picker)$"},
}
for _, m in ipairs(modalMatches) do hl.window_rule({ match = m, float = true }) end

-- Ignore maximize requests from all apps
hl.window_rule({
  name  = "suppress-maximize-events",
  match = { class = ".*" },
  suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
  name  = "fix-xwayland-drags",
  match = {
    class      = "^(cstrike_linux64)$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },
  no_focus = true,
})

-- Ignore Specific apps animation
hl.layer_rule({
  -- no_anim = true,
  match = {
    class = "rofi"
  },
  animation = "fade"
})

-- Blur
hl.layer_rule({
  match = {
    namespace = "launcher|rofi|waybar|notifications"
  },
  blur = true,
  ignore_alpha = 0.5,
})
