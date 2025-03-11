vim.g.mapleader = " "
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>")
vim.keymap.set("n", "te", "<Cmd>tabedit<CR>")
-- Tabmovement
vim.keymap.set("n", "<tab>", "<Cmd>tabnext<CR>")
vim.keymap.set("n", "<s-tab>", "<Cmd>tabprev<CR>")
--Window managment
vim.keymap.set("n", "<leader>w", "<C-w>w")

