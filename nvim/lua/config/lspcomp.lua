-- LSP 
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { "lua_ls", "clangd", "html", "cssls" }

for _, server in ipairs(servers) do
    if vim.lsp.config[server] then
        vim.lsp.config[server].capabilities = vim.tbl_deep_extend(
            'force',
            vim.lsp.config[server].capabilities or {},
            capabilities
        )
        vim.lsp.enable(server)
    end
end

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }
    end,
})

-- Auto Close
require('nvim-ts-autotag').setup({
    opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false
    },
})

-- Auto Pairs
require ('nvim-autopairs').setup({
    check_ts = true,
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')

-- NVIM CMP/Completion
local cmp = require('cmp')
local luasnip = require('luasnip')
cmp.event:on(                           -- CMP WITH AUTO PAIRS
    'confirm_done',                     --
    cmp_autopairs.on_confirm_done()     -- 
)

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    snippet ={
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<Tab>'] = cmp.mapping(function(fallback)
            local col = vim.fn.col('.') - 1
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jumpable()
            elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                fallback()
            else
                cmp.complete()
            end
        end, { 'i', 's' }),
	['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
	{ name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    })
})

