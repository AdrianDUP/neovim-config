return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
    },
    { "rose-pine/neovim", name = "rose-pine" }
}
