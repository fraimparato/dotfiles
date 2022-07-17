local function map(kind, lhs, rhs, opts)
    vim.api.nvim_set_keymap(kind, lhs, rhs, opts)
end

local silentnoremap = {noremap = true, silent = true}

map('n', '<C-n>', ':NvimTreeFocus\n', {noremap = true})
