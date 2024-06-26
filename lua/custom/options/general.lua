--  Ensure tabs are using spaces
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--  Line numbers
vim.wo.number = true
vim.wo.relativenumber = true
--  Sync clipboard with os
vim.o.clipboard = "unnamedplus"
--  Break indent
vim.opt.breakindent = true
--  Undo history
vim.opt.undofile = true
--  Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
--  Sign column
vim.wo.signcolumn = "yes"
--  Highlight the current line
vim.opt.cursorline = true
--  Terminal colors
vim.opt.termguicolors = true
--  Disable swap
vim.opt.swapfile = false
--  Add scrolloff
vim.opt.scrolloff = 8
