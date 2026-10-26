return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[    _  __          _                 ]],
            [[   / |/ /__ _  __ (_)__ _  ___ ____  ]],
            [[  /    / -_) |/ / / /  ' \/ -_) __/  ]],
            [[ /_/|_/\__/|___(_)_/_/_/_/\__/_/     ]],
            [[                                     ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("e", "󰈔  File Explorer", ":Neotree toggle<CR>"),
            dashboard.button("f", "  Find File", "<CMD>Telescope find_files<CR>"),
            dashboard.button("r", "  Recent Files", "<CMD>Telescope oldfiles<CR>"),
            dashboard.button("g", "  Find Text", "<CMD>Telescope live_grep<CR>"),
            dashboard.button("c", "  Config Neovim", "<CMD>e $MYVIMRC<CR>"),
            dashboard.button("q", "  Quit Neovim", "<CMD>qa<CR>"),
        }

        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Loaded " .. stats.count .. " plugins in " .. ms .. "ms"
        alpha.setup(dashboard.opts)
    end,
}
