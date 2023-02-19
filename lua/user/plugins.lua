local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- Plugins 
return packer.startup(function(use)
    use { "wbthomason/packer.nvim" }        -- Have packer manage itself
    use { "nvim-lua/plenary.nvim" }         -- Useful lua functions used by lots of plugins
    use { "windwp/nvim-autopairs" }         -- Autopairs, integrates with both cmp and treesitter
    use { "kyazdani42/nvim-web-devicons" }
    use { "kyazdani42/nvim-tree.lua" }
    use { "nvim-lualine/lualine.nvim" }
    use { "lewis6991/impatient.nvim" }

    -- Colorschemes
    -- use { "bluz71/vim-moonfly-colors" }
    use { "sainnhe/everforest" }
    use { "RRethy/nvim-base16" }

    -- Quick comment 
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Cool 
    use { "tpope/vim-eunuch" }

    -- Cmp 
    use { "hrsh7th/nvim-cmp" }          -- The completion plugin
    use { "hrsh7th/cmp-buffer" }        -- buffer completions
    use { "hrsh7th/cmp-path" }          -- path completions
    use { "saadparwaiz1/cmp_luasnip" }  -- snippet completions
    use { "hrsh7th/cmp-nvim-lsp" }
    -- use { "hrsh7th/cmp-nvim-lua" }

    -- LaTeX support 
    use { "lervag/vimtex" }

    -- Snippets
    use { "L3MON4D3/LuaSnip" }              --snippet engine
    use { "rafamadriz/friendly-snippets" }  -- a bunch of snippets to use

    -- Autoclosing tags for html
    use {
        "windwp/nvim-ts-autotag",
        config = function()
            require'nvim-treesitter.configs'.setup {
                autotag = {
                    enable = true,
                    filetypes = { "html" },
                }
            }
        end
    }

    -- LSP
    use { "neovim/nvim-lspconfig" }             -- enable LSP
    use { "williamboman/mason.nvim" }           -- simple to use language server installer
    use { "williamboman/mason-lspconfig.nvim" }
    use { "jose-elias-alvarez/null-ls.nvim" }   -- for formatters and linters

    -- Telescope
    use { "nvim-telescope/telescope.nvim" }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    -- Colorizer
    use { "norcalli/nvim-colorizer.lua" }

    -- Enable smooth scrolling 
    use { "karb94/neoscroll.nvim" }

    -- Easy indent
    use { "lukas-reineke/indent-blankline.nvim" }

    -- Edit surrounding quotes and brackets with ease
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                require "user.nvim-surround",
            })
        end
    })

    -- ZenMode bcs why not :) 
    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                window = {
                    backdrop = 0.96,
                    options = {
                        number = false,
                        relativenumber = false,
                    }
                },
            }
        end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

