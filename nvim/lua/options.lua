local opt = vim.opt

-- Line number settings
opt.nu = true
opt.relativenumber = true

-- Tabs & indentation
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

-- OneDark theme settings
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

-- Lightline theme & settings
vim.cmd([[
    let g:lightline = {
        \ 'colorscheme': 'one',
        \ }
]])

-- Nvim-tree
require("nvim-tree").setup()
