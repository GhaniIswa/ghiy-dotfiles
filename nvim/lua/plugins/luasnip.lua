return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        local ls = require("luasnip")
        local s = ls.snippet
        local f = ls.function_node
        local i = ls.insert_node

        require("luasnip.loaders.from_vscode").lazy_load()

        local html_tags = {
            "div", "span", "p", "a", "button", "input", "form", "label",
            "h1", "h2", "h3", "h4", "h5", "h6",
            "ul", "ol", "li", "section", "main", "header", "footer", "nav",
            "table", "tr", "td", "th", "img", "script", "style"
        }

        local auto_html_snippets = {}
        for _, tag in ipairs(html_tags) do
            table.insert(
                auto_html_snippets,
                s({ trig = "<" .. tag, regTrig = false, wordTrig = false }, {
                    f(function() return "<" .. tag .. ">" end),
                    i(1),
                    f(function() return "</" .. tag .. ">" end),
                })
            )
        end

        ls.add_snippets("html", auto_html_snippets)
    end,
}
