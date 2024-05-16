return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            --  Mason for auto lsp installing
            {
                "williamboman/mason.nvim",
                opts = {},
            },
            {
                "williamboman/mason-lspconfig.nvim",
                opts = {},
            },
            --  Autocomplete
            {
                "hrsh7th/nvim-cmp",
                dependencies = {
                    --  LSP Completion capabilities
                    "hrsh7th/cmp-nvim-lsp",
                },
                opts = {},
            },
        },
        priority = 750,
    },
}
