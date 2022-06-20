vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Lightline
    use 'itchyny/lightline.vim'

    -- OneDark theme
    use 'navarasu/onedark.nvim'

    -- Nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
            requires = {
            'kyazdani42/nvim-web-devicons', 
        }
    }

end)
