--  [[  Some nice keybinds  ]]
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
--  [[  The locals  ]]
local harpoon = require("harpoon")
--  [[  Others  ]]
harpoon:setup()
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
	vim.keymap.set("n", "<A-a>", function() harpoon:list():add() end)
	vim.keymap.set("n", "<A-e>", function() harpoon.ui:toggle_quick_menu(hapoon:list()) end)
	vim.keymap.set("n", "<A-h>", function() harpoon:list():select(1) end)
	vim.keymap.set("n", "<A-j>", function() harpoon:list():select(2) end)
	vim.keymap.set("n", "<A-k>", function() harpoon:list():select(3) end)
	vim.keymap.set("n", "<A-l>", function() harpoon:list():select(4) end)
	vim.keymap.set("n", "<A-H>", function() harpoon:list():select(5) end)
	vim.keymap.set("n", "<A-J>", function() harpoon:list():select(6) end)
	vim.keymap.set("n", "<A-K>", function() harpoon:list():select(7) end)
	vim.keymap.set("n", "<A-L>", function() harpoon:list():select(8) end)
else
	--  [[  Harpoon  ]]
	vim.keymap.set("n", "<leader>s", function() harpoon:list():add() end)
	vim.keymap.set("n", "<leader>d", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
	vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
	vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end)
	vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end)
	vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end)
	vim.keymap.set("n", "<leader>H", function() harpoon:list():select(5) end)
	vim.keymap.set("n", "<leader>J", function() harpoon:list():select(6) end)
	vim.keymap.set("n", "<leader>K", function() harpoon:list():select(7) end)
	vim.keymap.set("n", "<leader>L", function() harpoon:list():select(8) end)
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
--  [[  NeoTest  ]]
vim.keymap.set('n', '<leader>tf', function() require('neotest').run.run(vim.fn.expand('%')) end)
vim.keymap.set('n', '<leader>tn', function() require('neotest').run.run() end)
vim.keymap.set('n', '<leader>to', function() require("neotest").output.open({ enter = true }) end)
vim.keymap.set('n', '<leader>tw', function() require("neotest").watch.toggle() end)
