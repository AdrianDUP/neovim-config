vim.g.mapleader = ' '
--  This keymap is kept as a backup. Actual binding used is in nvim-tree.lua
vim.keymap.set('n', '<leader>pv', vim.cmd.NvimTreeToggle)

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

--  Configure tab switching
vim.keymap.set('n', '<C-[>', 'gT', {})
vim.keymap.set('n', '<C-]>', 'gt', {})
