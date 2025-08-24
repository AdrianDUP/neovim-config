-- Force english
-- vim.cmd("language en_US")
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
require("lazy").setup({
	--  Git Plugins
	{ import = "custom.plugins.git.fugitive" },
	{ import = "custom.plugins.git.gitsigns" },
	{ import = "custom.plugins.git.lazygit" },
	--  PHP Plugins
	{ import = "custom.plugins.php.laravel" },
	{ import = "custom.plugins.php.laravel-helper" },
	{ import = "custom.plugins.php.phptools" },
	--  Search plugins
	{ import = "custom.plugins.search.telescope" },
	{ import = "custom.plugins.search.harpoon" },
	--  UI plugins
	{ import = "custom.plugins.ui.treesitter" },
	{ import = "custom.plugins.ui.treesitter-context" },
	{ import = "custom.plugins.ui.dressing" },
	{ import = "custom.plugins.ui.noice" },
	{ import = "custom.plugins.ui.lualine" },
	{ import = "custom.plugins.ui.indent-blankline" },
	--  LSP Plugins
	{ import = "custom.plugins.lsp.lspconf" },
	{ import = "custom.plugins.lsp.nvim-cmp" },
	{ import = "custom.plugins.lsp.aerial" },
	{ import = "custom.plugins.lsp.blade" },
	--  Code plugins
	{ import = "custom.plugins.code.conform" },
	{ import = "custom.plugins.code.sleuth" },
	{ import = "custom.plugins.code.comment" },
	-- { import = "custom.plugins.general.copy-file-path" },
	{ import = "custom.plugins.general.orgmode" },
	{ import = "custom.plugins.testing.neotest" },
	{ import = "custom.plugins.files.oil" },
	-- { import = "custom.plugins.colorschemes.dracula_pro" },
	{ import = "custom.plugins.colorschemes.nightfox" },
	-- { import = "custom.plugins.colorschemes.vscode" },
	-- { import = "custom.plugins.colorschemes.rosepine" },
})
--  Load basic keymaps
require("custom.keymaps.basic")
require("custom.keymaps.plugin-specific")
--  Load configurations
require("custom.setup.configurations")
--  Load basic options
require("custom.options.general")
--  Load final options
require("custom.options.final")
