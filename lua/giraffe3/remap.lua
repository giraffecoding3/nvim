vim.g.mapleader = " "
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>")
vim.keymap.set("n", "te", "<Cmd>tabedit<CR>")
-- Tabmovement
vim.keymap.set("n", "<tab>", "<Cmd>bnext<CR>")
vim.keymap.set("n", "<s-tab>", "<Cmd>bprev<CR>")
vim.keymap.set("n", "<a-w>", "<Cmd>bdelete<CR><Cmd>bnext<CR>")
--Window managment
vim.keymap.set("n", "<leader>w", "<C-w>w")
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>")
vim.keymap.set("n", "<leader>lS", ":LiveServerStop<CR>")
