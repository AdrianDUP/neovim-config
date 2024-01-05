return {
	{
		-- Theme inspired by Atom
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("onedark")
		end,
	},
	{ dir = "~/projects/dracula_pro", priority = 1000, lazy = false },
	{
		"catppuccin/nvim",
		priority = 1000,
		name = "catppuccin",
		opts = {
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},
	{ "lunarvim/lunar.nvim" },
	{
		"Mofiqul/vscode.nvim",
	},
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
		-- Add in any other configuration;
		--   event = foo,
		--   config = bar
		--   end,
	},
	{ "shaunsingh/moonlight.nvim" },
	{ "rose-pine/neovim", name = "rose-pine", priority = 1000 },
	{ "miikanissi/modus-themes.nvim", priority = 1000 },
	{ "oxfist/night-owl.nvim", priority = 1000 },
	{
	  "zootedb0t/citruszest.nvim",
	  lazy = false,
	  priority = 1000,
	},
}
