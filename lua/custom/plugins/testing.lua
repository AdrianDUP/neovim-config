return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			'V13Axel/neotest-pest',
			'olimorris/neotest-phpunit',
		},
		config = function()
			require('neotest').setup({
				adapters = {
					require('neotest-pest'),
					require('neotest-phpunit'),
				},
			})
		end
	},
}
