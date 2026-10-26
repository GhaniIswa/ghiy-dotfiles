return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
        "L3MON4D3/LuaSnip",
    },

    opts = {
        keymap = {
            preset = "default",
            ["<CR>"] = { "select_and_accept", "fallback" },
        },

        appearance = {
            use_nvim_cmp_as_default = false,
            nerd_font_variant = "mono",
        },

        snippets = {
            preset = "luasnip",
        },

        completion = {
            keyword = {
                range = "prefix",
            },

            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },

            menu = {
                draw = {
                    treesitter = { "lsp" },
                },
            },

            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
            },

            ghost_text = {
                enabled = true,
            },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        signature = { enabled = true },
    },
}
