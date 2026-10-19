-- Neovim base
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "#151515" })

vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })
vim.api.nvim_set_hl(0, "ModeMsg", { bg = "NONE" })
vim.api.nvim_set_hl(0, "MoreMsg", { bg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#151515" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#151515" })

-- -- Bufferline
-- vim.api.nvim_set_hl(0, "BufferLineSelected", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "BufferLineDevIconSelected", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "BufferLineModifiedSelected", { bg = "NONE" })

-- Neo Tree
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#e0e0e0", bold = true })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#e0e0e0", bold = true })
vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#5c6370" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#C3DEE0" })

-- Mengubah warna baris / kotak highlight yang aktif di Neo-tree
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { fg = "NONE", bg = "#151515", bold = true })

vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#e838d0" })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#7075ff" })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted",   { fg = "#e06c75" })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict",  { fg = "#c678dd", bold = true })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored",   { fg = "#5c6370" })
