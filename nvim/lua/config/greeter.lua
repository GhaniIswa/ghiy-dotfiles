local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[    _  __          _                 ]],
    [[   / |/ /__ _  __ (_)__ _  ___ ____  ]],
    [[  /    / -_) |/ / / /  ' \/ -_) __/  ]],
    [[ /_/|_/\__/|___(_)_/_/_/_/\__/_/     ]],
    [[                                     ]],
}

dashboard.section.buttons.val = {
    dashboard.button("e", "File Explorer", ":Neotree toggle<CR>"),
    dashboard.button("f", "Find File", ":Telescope find_files<CR>"),
    dashboard.button("r", "Recent Files", ":Telescope oldfiles<CR>"),
    dashboard.button("s", "Settings (init.lua)", ":e ~/.config/nvim/init.lua<CR>"),
    dashboard.button("q", "Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.val = "Neovim Editor"

alpha.setup(dashboard.opts)
