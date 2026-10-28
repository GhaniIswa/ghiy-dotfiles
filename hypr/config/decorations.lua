-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 22,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
        active_border = 0xffbd93f9,
        },
    },

    decoration = {
        dim_special = 0.3,
        rounding = 6,
        active_opacity = 0.97,
        inactive_opacity = 0.90,
        fullscreen_opacity = 1,
        blur = {
            size = 3,
            passes = 3,
            special = true,
        },
    },
})
