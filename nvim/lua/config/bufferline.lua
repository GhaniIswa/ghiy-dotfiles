-- Bufferline/Tabs
require("bufferline").setup({
    options = {
        mode = "buffers",
        numbers = "",
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        show_buffer_close_icons = false,
        show_buffer_icons = false,
        separator_style = { "", "" },
        indicator = {
            style = "underline",
        },
    }
})
