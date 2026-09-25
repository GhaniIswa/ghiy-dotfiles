-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--output    = eDP-1,
--mode      = "1920x1200@60",
--position  = "0x0",
-- scale     = "1",
-- })

hl.monitor({
    output    = "eDP-1",
    mode      = "1920x1200@60",
    position  = "0x0",
    scale     = "1",
})
