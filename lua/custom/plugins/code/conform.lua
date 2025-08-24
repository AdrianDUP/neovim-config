return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				php = { "pint", "phpcbf" },
				html = { "htmlbeautifier" },
			},
			formatters = {
				phpcbf = {
					prepend_args = function(self, ctx)
						return { "--standard=PSR12" }
					end,
				},
			},
		},
	},
}
