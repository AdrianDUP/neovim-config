return {
	--  Simples
	"lumiliet/vim-twig",
	"nvim-treesitter/nvim-treesitter-context",
	-- "jiangmiao/auto-pairs",
	-- "mfussenegger/nvim-lint",
	--  More complex
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
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
					},
				},
			})
		end,
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
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
}
