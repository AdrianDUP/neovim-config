-- Force english
vim.cmd("language en_US")
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
--  Include our plugins
require("lazy").setup("custom.plugins")
--  Load basic options
require("custom.options.general")
--  Load basic keymaps
require("custom.keymaps.basic")
require("custom.keymaps.plugin-specific")
--  Load configurations
require("custom.setup.configurations")
--  Load final options
require("custom.options.final")
