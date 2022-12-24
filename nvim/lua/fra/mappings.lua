local function map(kind, lhs, rhs, opts)
    vim.api.nvim_set_keymap(kind, lhs, rhs, opts)
end

local silentnoremap = {noremap = true, silent = true}

vim.g.mapleader = " "

-- Focus on NvimTree pressing CTRL+n
map('n', '<C-n>', ':NvimTreeFocus\n', {noremap = true})

-- make visual blocks move up and down with J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- when pressing J, set the cursor at its original position
vim.keymap.set("n", "J", "mzJ`z")
