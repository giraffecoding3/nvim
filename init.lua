require("giraffe3")
-- In der init.lua
if vim.fn.has('macunix') == 1 then
  -- macOS-spezifische Keybindings
  vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
else
  -- Windows-spezifische Keybindings
  vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
end

