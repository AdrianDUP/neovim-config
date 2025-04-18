return {
	{
		"greggh/laravel-helper.nvim",
		dependencies = {
			-- Enhanced command interface
			"ColinKennedy/mega.cmdparse", -- Optional but recommended
			"ColinKennedy/mega.logging", -- Required by mega.cmdparse

			-- Core dependencies
			"MunifTanjim/nui.nvim",

			-- Telescope integration
			"nvim-telescope/telescope.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
			"nvim-lua/plenary.nvim", -- Required by telescope

			-- Additional recommended Laravel ecosystem dependencies
			"folke/lazy.nvim",
			"nvim-neotest/nvim-nio",
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer",
			"nvim-treesitter/nvim-treesitter",
			"windwp/nvim-ts-autotag",
			"nvim-treesitter/nvim-treesitter-context",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"stevearc/conform.nvim",
			"mfussenegger/nvim-lint",
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/neotest",
			"nvim-neotest/neotest-plenary",
			"V13Axel/neotest-pest",
			"L3MON4D3/LuaSnip",
			-- "rafamidriz/friendly-snippets",
			"saghen/blink.cmp",
			"saghen/blink.compat",
			"mikavilpas/blink-ripgrep.nvim",
			"dmitmel/cmp-cmdline-history",
		},
		ft = { "php", "blade" },
		config = function()
			require("laravel-helper").setup({
				-- Optional configuration options
			})
		end,
	},
}
