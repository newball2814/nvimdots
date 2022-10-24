local colorscheme = "everforest"

vim.g.everforest_background = "hard"
vim.g.everforest_better_performance = 1
vim.g.everforest_cursor = "green"
vim.g.everforest_diagnostic_line_highlight = 1

-- Protective call if colorscheme failed to render
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
