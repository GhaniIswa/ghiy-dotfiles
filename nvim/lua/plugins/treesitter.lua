return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        ensure_installed = { "html", "javascript", "typescript", "tsx", "vue", "xml", "css"},
        highlight = { enable = true },
    },
}
