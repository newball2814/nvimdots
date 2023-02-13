-- Nvim themes
-- Available options: 
-- aquarium, everblush, everforest, gruvbox, jellybeans, mountain, 
-- paradise, tokyonight
-- If none are chosen, default will be set to paradise
_G.theme = "paradise"

-- Remove lines with unused settings to disable it
require "user.plugins"              -- plugins
require "user.options"              -- general settings
require "user.colorizer"            -- blazingly fast colorizer for vim
require "user.colors"               -- colorscheme
require "user.impatient"            -- fast load plugins
require "user.cmp"                  -- code completion
require "user.lsp.nvim-lspconfig"   -- LSP server
require "user.lsp.mason"            -- Manager for LSP config
require "user.lsp.null-ls"          -- code formatter and linting
require "user.telescope"            -- fuzzy finder
require "user.keymaps"              -- custom keybindings
require "user.treesitter"           -- syntax highlighting
require "user.autopairs"            -- auto-closing brackets
require "user.neoscroll"            -- smooth scrolling
require "user.nvim-tree"            -- show directories
require "user.lualine"              -- display status 
require "user.indentline"           -- easier to look at indentations
-- require "user.vimtex"
