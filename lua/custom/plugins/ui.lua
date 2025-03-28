return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "blade", "php_only" },
		},
		config = function(_, opts)
			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				}
			})

			require("nvim-treesitter.configs").setup(opts)
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "blade",
			}
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	-- {
	-- 	"folke/noice.nvim",
	-- 	event = "VeryLazy",
	-- 	opts = {
	-- 		-- add any options here
	-- 	},
	-- 	dependencies = {
	-- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- OPTIONAL:
	-- 		--   `nvim-notify` is only needed, if you want to use the notification view.
	-- 		--   If not available, we use `mini` as the fallback
	-- 		-- "rcarriga/nvim-notify",
	-- 	},
	-- },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
