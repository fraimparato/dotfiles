vim.cmd [[packadd packer.nvim]]

local function get_setup(name)
    return string.format('require("setup.%s")', name)
end

return require('packer').startup(function()
    
    -- Packer
    use { 'wbthomason/packer.nvim' }

    use {
        "nvim-lualine/lualine.nvim",
        config = get_setup("lualine"),
        requires = {
            "kyazdani42/nvim-web-devicons",
            {
                "kyazdani42/nvim-tree.lua",
                require("nvim-tree").setup()
            }
        }
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        --config = get_setup("telescope")
    }
   
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
       -- config = get_setup("telescope_fzf_native"),
        run = 'make'
    }

    -- OneDark theme
    use {
        'navarasu/onedark.nvim',
        require('onedark').setup {
            style = 'darker'
        },
        require('onedark').load()
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = get_setup("treesitter")
    }

    use { 
        'nvim-treesitter/nvim-treesitter-context',
        require'treesitter-context'.setup{
            enable = true,
            max_lines = 0,
            trim_scope = 'outer',
            patterns = {
                default = {
                    'class',
                    'function',
                    'method',
                },
            },
            zindex = 20,
            mode = 'cursor'
        }
    }

end)
