local bufferline = require('bufferline')
    bufferline.setup({
        options = {
		show_buffer_close_icons = false,
		show_close_icon = false,

	offsets = {
		{
			filetype = "NvimTree",
			text = "Explorer",
			highlight = "Directory",
			seperator = true,
		}
        },
}
    })

