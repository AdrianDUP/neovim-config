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
    {
        "stevearc/aerial.nvim",
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            {
                "<leader>cs",
                "<cmd>AerialToggle<CR>",
                desc = "Aerial (Symbols)"
            }
        }
    },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                php = { "phpcbf" },
                html = { "htmlbeautifier" },
            },
            formatters = {
                phpcbf = {
                    prepend_args = function(self, ctx)
                        return { "--standard=PSR12" }
                    end,
                }
            }
        },
    }
}
