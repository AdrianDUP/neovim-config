return {
	-- "gc" to comment visual regions/lines
	"numToStr/Comment.nvim",
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration cobmes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
}
