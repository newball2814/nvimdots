-- Nvim themes
-- Available options: 
-- aquarium, everblush, everforest, gruvbox, jellybeans, mountain, 
-- paradise, tokyonight
-- If none are chosen, default will be set to paradise
_G.theme = "paradise"

require "user.options"              -- general settings
require "user.plugins"              -- plugins
require "user.colors"               -- colorscheme
require "user.impatient"            -- fast load plugins
require "user.cmp"                  -- code completion
require "user.lsp.nvim-lspconfig"   -- LSP server
require "user.lsp.mason"            -- Manager for LSP config
require "user.lsp.null-ls"          -- code formatter and linting
require "user.telescope"            -- fuzzy finder
require "user.keymaps"              -- custom keybindings
require "user.treesitter"           -- syntax highlighting
require "user.colorizer"            -- blazingly fast colorizer for vim
require "user.autopairs"            -- auto-closing brackets
require "user.neoscroll"            -- smooth scrolling
require "user.nvim-tree"            -- show directories
require "user.lualine"              -- display status 
