local opt = vim.opt

-- General
opt.encoding = "utf-8"
opt.mouse = "a"

-- Line number settings
opt.nu = true
opt.relativenumber = true

-- Tabs & indentation
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

-- Cursor style
vim.cmd([[
    set guicursor=
]])

-- Syntax highlighting & style
opt.colorcolumn =  {81, 121, 161}
opt.scrolloff = 15

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
