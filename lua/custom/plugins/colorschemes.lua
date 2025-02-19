return {
	{ dir = "~/projects/dracula_pro", priority = 1000, lazy = false },
	{
		"askfiy/visual_studio_code",
		priority = 100,
		config = function()
			vim.cmd([[colorscheme visual_studio_code]])
		end,
	},
	{ "miikanissi/modus-themes.nvim", priority = 1000 },
	{ "EdenEast/nightfox.nvim" },
}
