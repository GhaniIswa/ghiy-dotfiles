-- File Tree
require("nvim-tree").setup({
    actions = {
        open_file = {
          quit_on_open = true,  
        },
    },
    view = {
        width = 30,
        side = "left",
    },
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
})

-- Bufferline/Tabs
require("bufferline").setup({
    options = {
        mode = "buffers",
        numbers = "none",
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        show_buffer_close_icons = false,
        separator_style = "slant",
    }
})
