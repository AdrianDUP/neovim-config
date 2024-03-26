return {
	{
		-- Theme inspired by Atom
		"navarasu/onedark.nvim",
		priority = 1000,
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
		config = {
			color_overrides = {
				mocha = {
					rosewater = "#f5e0dc",
					pink = "#f5c2e7",
					-- mauve = "#cba6f7",
					maroon = "#eba0ac",
					teal = "#94e2d5",
					sapphire = "#74c7ec",
					subtext1 = "#bac2de", --  Not sure what this is referring to
					subtext0 = "#a6adc8", --  No idea what this is referring to
					overlay2 = "#ff00ff", --  Code completion default text color
					overlay1 = "#7f849c", --  Code completion text highlight
					overlay0 = "#6c7086", --  Comments and colors on popups text
					surface2 = "#585b70", --  Cursor maybe
					surface1 = "#45475a", --  Line numbers in the gutter
					surface0 = "#313244", --  Current line indicator
					mantle = "#181825", --  Middle part of the bottom bar
					crust = "#11111b",
					--
					bg = "#0b0d0f",
					base = "#0b0d0f", --  Background
					fg = "#FFFFFF",
					text = "#FFFFFF", --  Text color
					blue = "#006AFF",
					green = "#04D000",
					--  lavender = "#6400FF",
					lavender = "#9580FF",
					red = "#FF0000",
					yellow = "#F6F332",
					flamingo = "#DF8B01",
					sky = "#80FFEA", --  Command dialog border
					peach = "#DF8B01", --  Command color and numbers and true/false
					-- mauve = "#FF114F", --  Redish text in code and V-LINE and command
					mauve = "#2596be", --  Redish text in code and V-LINE and command
					sapphire = "#64C7FF"
				},
			},
		}
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
	{ "shaunsingh/moonlight.nvim" },
	{ "rose-pine/neovim", name = "rose-pine", priority = 1000 },
	{ "miikanissi/modus-themes.nvim", priority = 1000 },
	{ "oxfist/night-owl.nvim", priority = 1000 },
}
