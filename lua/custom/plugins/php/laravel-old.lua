return {
	{
		-- Add the Laravel.nvim plugin which gives the ability to run Artisan commands
		-- from Neovim.
		"adalessa/laravel.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"tpope/vim-dotenv",
			"MunifTanjim/nui.nvim",
		},
		tag = "v2.2.2",
		cmd = { "Artisan", "Composer", "Npm", "Yarn", "Laravel", "Sail" },
		keys = {
			{ "<leader>la", ":Laravel artisan<cr>" },
			{ "<leader>lr", ":Laravel routes<cr>" },
			{ "<leader>lm", ":Laravel related<cr>" },
		},
		event = { "VeryLazy" },
		config = true,
		opts = {
			lsp_server = "intelephense",
			features = { null_ls = { enable = false } },
		},
	},
}
