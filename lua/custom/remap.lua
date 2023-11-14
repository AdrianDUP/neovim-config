local defaultOptions = { noremap = true, silent = true }

vim.keymap.set('', '<Space>', '<Nop>', defaultOptions)
vim.g.mapleader = ' '
--  This keymap is kept as a backup. Actual binding used is in nvim-tree.lua
vim.keymap.set('n', '<leader>pv', vim.cmd.NvimTreeToggle)

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

--  Copy to clipboard
vim.keymap.set('v', '<leader>y', '\"+y')

--  Better moving between splits
vim.keymap.set('n', '<C-j>', '<C-w>j', defaultOptions)
vim.keymap.set('n', '<C-k>', '<C-w>k', defaultOptions)
vim.keymap.set('n', '<C-h>', '<C-w>h', defaultOptions)
vim.keymap.set('n', '<C-l>', '<C-w>l', defaultOptions)

--  Move between buffers
vim.keymap.set('n', '<A-[>', ':bprevious<CR>', defaultOptions)
vim.keymap.set('n', '<A-]>', ':bnext<CR>', defaultOptions)
