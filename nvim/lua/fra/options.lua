local opt = vim.opt

-- General
opt.encoding = "utf-8"
opt.mouse = "a"

-- Line number
opt.nu = true
opt.relativenumber = true

-- Tabs & indentation
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

-- Search
opt.hlsearch = false
opt.incsearch = true

-- Enable system clipboard (needs wl-clipboard installed on Wayland)
opt.clipboard:prepend {"unnamedplus"}

-- Syntax highlighting & style
opt.termguicolors = true
opt.guicursor = ""
opt.colorcolumn =  {81, 121, 161}
opt.scrolloff = 5
