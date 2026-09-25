local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = "🔍 ",
        selection_caret = " ",
        path_display = { "smart" },
    },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
