local ensure_packer = function()
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

vim.cmd [[packadd packer.nvim]]

local function get_setup(name)
    return string.format('require("setup.%s")', name)
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- lualine, devicons and nvim-tree --
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

    -- OneDark theme
    use {
        'navarasu/onedark.nvim',
        require('onedark').setup {
            style = 'darker'
        },
        require('onedark').load()
    }

    -- telescope fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter', {
            run = ':TSUpdate'
        }
    }

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
