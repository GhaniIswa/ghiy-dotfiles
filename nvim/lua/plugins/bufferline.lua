return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            mode = "buffers",
            diagnostics = "nvim_lsp",
            show_close_icon = false,
            show_buffer_close_icons = false,
            show_buffer_icons = false,
            separator_style = { "", "" },
            indicator = {
                style= "underline",
            },
            custom_filter = function(buf_number)
                local buf_name = vim.api.nvim_buf_get_name(buf_number)
                if buf_name == "" and vim.bo[buf_number].buftype == "" and not vim.bo[buf_number].modified then
                    return false
                end
                return true
            end,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    highlight = "Directory",
                    separator = true,
                },
            },
        },
    },
}
