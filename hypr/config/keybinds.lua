-- KEYBIND --

local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox")) 
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" })) 
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("rofi -show drun")) 
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()) 
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Window Focus, Position, Size --

-- Focus
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Position
hl.bind(mainMod .. " + SHIFT + left",   hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right",  hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",   hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + CTRL + C", hl.dsp.window.center({ window = "current" }))

-- Size
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", layout_aware = true }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", layout_aware = true }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + EQUAL", hl.dsp.window.resize({ x = 50, y = 0, relative = true}), { repeating = true })
hl.bind(mainMod .. " + MINUS", hl.dsp.window.resize({ x = -50, y = 0, relative = true}), { repeating = true })

-- Move Workspace 

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + ESCAPE", hl.dsp.focus({workspace = "Gaming"}))

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Volume & Brightness

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl set 10%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl set 10%-"),                  { locked = true, repeating = true })

-- Screenshots --

hl.bind(mainMod .. " + S ", hl.dsp.exec_cmd("grim -g \"$(slurp)\" /home/ghani/Pictures/Screenshots/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"))
