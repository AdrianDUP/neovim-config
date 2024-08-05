--  [[  Telescope  ]]
local tele = require('telescope.builtin')
-- See `:help telescope.builtin`
vim.keymap.set("n", "<leader>?", tele.oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", tele.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })
vim.keymap.set("n", "<leader>gf", tele.git_files, { desc = "Search [G]it [F]iles" })
vim.keymap.set("n", "<leader>sa", function() tele.find_files({ find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', '-u' } }) end, { desc = "[S]earch [A]ll files" })
vim.keymap.set("n", "<leader>sf", tele.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sh", function() tele.find_files({hidden = true}) end, { desc = "[S]earch [H]idden" })
vim.keymap.set("n", "<leader>sH", tele.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", tele.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", tele.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sG", ":LiveGrepGitRoot<cr>", { desc = "[S]earch by [G]rep on Git Root" })
vim.keymap.set("n", "<leader>sd", tele.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", tele.resume, { desc = "[S]earch [R]esume" })
