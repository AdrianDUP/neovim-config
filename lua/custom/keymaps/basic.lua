--  [[  Split navigation  ]]
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
--  [[  Files  ]]
vim.keymap.set("n", "-", "<CMD>Oil<CR>")
-- vim.keymap.set("n", "-", "<CMD>Ex<CR>")
--  [[  Conform keymap  ]]
vim.keymap.set("n", "\\r", function()
	require("conform").format()
end)
