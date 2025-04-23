vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup({
	options = {
		show_buffer_close_icons = false,
		show_close_icon = false,

		offsets = {
			{
				filetype = "neo-tree",
				text = "Tree",
				highlight = "Directory",
				seperator = true,
			},
		},
	},
})
