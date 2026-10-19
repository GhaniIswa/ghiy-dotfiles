local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.guicursor = "a:ver25"

opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
