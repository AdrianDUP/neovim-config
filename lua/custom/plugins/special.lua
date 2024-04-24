return {
	{
		"laytan/cloak.nvim",
		config = function()
			require("cloak").setup({
				enabled = true,
				cloak_character = "*",
				-- The applied highlight group (colors) on the cloaking, see `:h highlight`.
				highlight_group = "Comment",
				-- Applies the length of the replacement characters for all matched
				-- patterns, defaults to the length of the matched pattern.
				cloak_length = nil, -- Provide a number if you want to hide the true length of the value.
				-- Wether it should try every pattern to find the best fit or stop after the first.
				try_all_patterns = true,
				patterns = {
					{
						-- Match any file starting with '.env'.
						-- This can be a table to match multiple file patterns.
						file_pattern = ".env*",
						-- Match an equals sign and any character after it.
						-- This can also be a table of patterns to cloak,
						-- example: cloak_pattern = { ':.+', '-.+' } for yaml files.
						cloak_pattern = "=.+",
						-- A function, table or string to generate the replacement.
						-- The actual replacement will contain the 'cloak_character'
						-- where it doesn't cover the original text.
						-- If left emtpy the legacy behavior of keeping the first character is retained.
						replace = nil,
					},
				},
			})
		end,
	},
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
					"PROGRESS(p)",
					"ASSIGNED(a)",
					"|",
					"DONE(d)",
				},
				org_todo_keyword_faces = {
					TODO = ":foreground red",
					PROGRESS = ":foreground teal",
					ASSIGNED = ":foreground cyan",
					DONE = ":foreground green",
				},
				org_priority_lowest = "G",
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
}
