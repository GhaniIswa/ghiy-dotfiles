-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 22,
        border_size = 0,
        extend_border_grab_area = 10,
        resize_on_border = true,
    },

    decoration = {
        dim_special = 0.3,
        rounding = 10,
        active_opacity = 0.95,
        inactive_opacity = 0.75,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },
})
