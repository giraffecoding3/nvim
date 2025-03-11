vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local c = require('solarized-osaka.colors')

require("nvim-tree").setup({
git = {
enable = false,
},
renderer = {
	icons = {
		glyphs = {
			folder = {
				default = " ",
				open = " ",
				arrow_open = "",
				arrow_closed = "",
			}
		}
	}
},
})


vim.keymap.set("n", "<leader>pv", "<Cmd>NvimTreeToggle<CR>")
vim.cmd("NvimTreeToggle")


