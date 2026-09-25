-- Input configuration

hl.config({
    input = {
        accel_profile = "flat",
    },

    cursor = {
    inactive_timeout = 5,
    }
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "close" })
hl.gesture({ fingers = 3, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "left",       action = "float" })
