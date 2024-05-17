return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                cond = function()
                        return vim.fn.executable("make") == 1
                end,
            }
        },
        keys = {
            { "<leader>sf", "<cmd>Telescope find_files<cr>" },
            { "<leader>sg", "<cmd>Telescope live_grep<cr>" },
            { "<leader><space>", "<cmd>Telescope buffers<cr>" },
        },
    },
    {
        "stevearc/oil.nvim",
        opts = {},
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
}
