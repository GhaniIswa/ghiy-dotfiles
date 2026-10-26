return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                prompt_prefix = "   ",
                selection_caret = "❯ ",
                entry_prefix = "  ",
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        ["<Esc>"] = actions.close,
                    },
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        })

        -- Load extension
        pcall(telescope.load_extension, "fzf")

        -- Keymaps
        local keymap = vim.keymap
        keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Find files" })
        keymap.set("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>", { desc = "Recent files" })
        keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find text in project" })
        keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Find open buffers" })
        keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { desc = "Help tags" })
    end,
}
