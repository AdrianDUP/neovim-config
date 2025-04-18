return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			--  Mason for auto lsp installing
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			--  Autocomplete
		},
		priority = 750,
	},
}
