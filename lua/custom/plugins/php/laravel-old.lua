return {
	{
		"adalessa/laravel.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"tpope/vim-dotenv",
			"MunifTanjim/nui.nvim",
			"kevinhwang91/promise-async",
			"nvimtools/none-ls.nvim",
		},
		tag = "v2.2.1",
		cmd = { "Artisan", "Composer", "Npm", "Yarn", "Laravel", "Sail" },
		keys = {
			{ "<leader>la", ":Laravel artisan<cr>" },
			{ "<leader>lr", ":Laravel routes<cr>" },
			{ "<leader>lm", ":Laravel related<cr>" },
		},
		event = { "VeryLazy" },
		opts = {
			features = {
				null_ls = {
					enable = false,
				},
				route_info = {
					enable = true,
				},
				model_info = {
					enable = true,
				}
			}
		},
		config = true,
	},
}
