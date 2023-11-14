vim.g.nvim_phpcs_config_phpcs_path = 'phpcs'
vim.g.nvim_phpcs_config_phpcbf_paths = 'phpcbf'
vim.g.nvim_phpcs_config_phpcs_standard = 'PSR12'

vim.cmd([[
    augroup PHBSCF
        autocmd!
        autocmd BufWritePost,BufReadPost,InsertLeave *.php lua require'phpcs'.cs()
        autocmd BufWritePost *.php lua require'phpcs'.cbf()
    augroup END
]])
