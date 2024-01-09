--  [[  Some nice keybinds  ]]
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
--  [[  Harpoon keybindings  ]]
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
vim.keymap.set("n", "<A-a>", function() mark.add_file() end)
vim.keymap.set("n", "<A-e>", function() ui.toggle_quick_menu() end)
vim.keymap.set("n", "<A-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<A-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<A-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<A-l>", function() ui.nav_file(4) end)
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
