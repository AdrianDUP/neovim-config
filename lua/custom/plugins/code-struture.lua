return {
	--  Simples
	"lumiliet/vim-twig",
	"nvim-treesitter/nvim-treesitter-context",
	"jiangmiao/auto-pairs",
	-- "mfussenegger/nvim-lint",
	--  More complex
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"stevearc/aerial.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<leader>cs", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
		},
	},
}
