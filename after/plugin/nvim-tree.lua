local tree = require("nvim-tree")
tree.setup({
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


