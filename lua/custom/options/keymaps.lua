--  [[  Some nice keybinds  ]]
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
--  [[  Harpoon keybindings  ]]
print("Some wierd place")
vim.keymap.set("n", "<A-a>", function() require('harpoon.mark').add_file() end)
vim.keymap.set("n", "<A-e>", function() require('harpoon.ui').toggle_quick_menu() end)
vim.keymap.set("n", "<A-h>", function() require('harpoon.ui').nav_file(1) end)
vim.keymap.set("n", "<A-j>", function() require('harpoon.ui').nav_file(2) end)
vim.keymap.set("n", "<A-k>", function() require('harpoon.ui').nav_file(3) end)
vim.keymap.set("n", "<A-l>", function() require('harpoon.ui').nav_file(4) end)
