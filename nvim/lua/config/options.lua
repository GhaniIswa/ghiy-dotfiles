local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.guicursor = "a:ver25"
opt.wrap = true
opt.breakindent = true
opt.linebreak = true
opt.showbreak = "↪ "
opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
