local builtin = require('telescope.builtin')

-- file finder
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- git file finder
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- word finder in project (find string)
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({
        search = vim.fn.input("Grep > ")
    })
end)
