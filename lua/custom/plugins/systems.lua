return {
    {
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		config = function()
			-- Setup orgmode
			require("orgmode").setup({
				org_agenda_files = "~/orgfiles/**/*",
				org_default_notes_file = "~/orgfiles/refile.org",
				org_todo_keywords = {
					"TODO(t)",
					"ON_HOLD(h)",
					"PROGRESS(p)",
					"REVIEW(r)",
					"ASSIGNED(a)",
					"|",
					"DONE(d)",
				},
				org_todo_keyword_faces = {
					TODO = ":foreground red",
					ON_HOLD = ":foreground #DDDDDD",
					PROGRESS = ":foreground #006AFF",
					REVIEW = ":foreground yellow",
					ASSIGNED = ":foreground cyan",
					DONE = ":foreground #00FF00",
				},
				-- org_priority_lowest = "G",
				mappings = {
					org = {
						org_toggle_checkbox = '<C-s>',
					}
				}
			})

			-- NOTE: If you are using nvim-treesitter with `ensure_installed = "all"` option
			-- add `org` to ignore_install
			-- require('nvim-treesitter.configs').setup({
			--   ensure_installed = 'all',
			--   ignore_install = { 'org' },
			-- })
		end,
	},
    -- "gc" to comment visual regions/lines
	{
		"numToStr/Comment.nvim",
		config = function()
			require('Comment').setup()
		end,
		lazy = false
	},
}
