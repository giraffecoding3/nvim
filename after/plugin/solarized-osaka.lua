local solarized = require("solarized-osaka")
local function colormypencil(color)
	solarized.setup({
	transparent = true,
	terminal_colors =true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
	})
	color = color or "solarized-osaka"
	vim.cmd("colorscheme " .. color)
	vim.cmd[[
	]]

end
colormypencil("solarized-osaka")

