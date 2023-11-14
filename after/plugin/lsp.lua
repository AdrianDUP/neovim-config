local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

lsp.setup_nvim_cmp({
    preselect = 'none',
    completion = {
        completeopt = 'menu,menuone,noinsert,noselect'
    }
})

lsp.setup()

local cmp = require('cmp')
local cmp_select = { behaviour = cmp.SelectBehavior.Select }
--local cmp_mappings = lsp.defaults.cmp_mappings({
--['<A-j>'] = cmp.mapping.select_next_item(cmp_select),
--['<A-k>'] = cmp.mapping.select_prev_item(cmp_select),
--['<Esc>'] = cmp.mapping.abort(),
--['<CR>'] = cmp.mapping.confirm({ select = true }),
--['<C-Space>'] = cmp.mapping.complete(),
--})

cmp.setup({
    mapping = {
        ['<A-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<A-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Esc>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})
