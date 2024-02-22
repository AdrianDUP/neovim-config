--  [[  Some nice keybinds  ]]
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
--  [[  Harpoon keybindings  ]]
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
--  [[  LazyGit configuration  ]]
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })
--  [[  Oil Keymaps ]]
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
--  [[  Conform keymap  ]]
vim.keymap.set("n", "\\r", function()
	require("conform").format()
end)
--  [[  File navigation  ]]
-- vim.keymap.set('n', '-', '<CMD>Ex<CR>')
--  [[  NeoTree keymaps  ]]
-- vim.keymap.set('n', '<leader>e', function() require('neo-tree.command').execute({ toggle = true }) end)
vim.keymap.set('n', '<leader>be', function() require('neo-tree.command').execute({ source = 'buffer', toggle = true }) end)
--  [[  Cloak  ]]
vim.keymap.set('n', '<leader>c', require('cloak').toggle, { noremap = true })
--  [[  UndoTree  ]]
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
--  [[ Trouble  ]]
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "<leader>gr", function() require("trouble").toggle("lsp_references") end)

--  [[  Filesystem based Keymaps  ]]
if vim.loop.os_uname().sysname == "Linux" then
	--  [[  Harpoon  ]]
	vim.keymap.set("n", "<A-a>", function() mark.add_file() end)
	vim.keymap.set("n", "<A-e>", function() ui.toggle_quick_menu() end)
	vim.keymap.set("n", "<A-h>", function() ui.nav_file(1) end)
	vim.keymap.set("n", "<A-j>", function() ui.nav_file(2) end)
	vim.keymap.set("n", "<A-k>", function() ui.nav_file(3) end)
	vim.keymap.set("n", "<A-l>", function() ui.nav_file(4) end)
	vim.keymap.set("n", "<A-H>", function() ui.nav_file(5) end)
	vim.keymap.set("n", "<A-J>", function() ui.nav_file(6) end)
	vim.keymap.set("n", "<A-K>", function() ui.nav_file(7) end)
	vim.keymap.set("n", "<A-L>", function() ui.nav_file(8) end)
else
	--  [[  Harpoon  ]]
	vim.keymap.set("n", "<leader>s", function() mark.add_file() end)
	vim.keymap.set("n", "<leader>d", function() ui.toggle_quick_menu() end)
	vim.keymap.set("n", "<leader>h", function() ui.nav_file(1) end)
	vim.keymap.set("n", "<leader>j", function() ui.nav_file(2) end)
	vim.keymap.set("n", "<leader>k", function() ui.nav_file(3) end)
	vim.keymap.set("n", "<leader>l", function() ui.nav_file(4) end)
	vim.keymap.set("n", "<leader>H", function() ui.nav_file(5) end)
	vim.keymap.set("n", "<leader>J", function() ui.nav_file(6) end)
	vim.keymap.set("n", "<leader>K", function() ui.nav_file(7) end)
	vim.keymap.set("n", "<leader>L", function() ui.nav_file(8) end)
end
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
