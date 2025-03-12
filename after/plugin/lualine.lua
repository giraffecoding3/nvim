require("lualine").setup({
	options = {
		theme = "solarized_dark", -- Oder ein anderes Theme wie 'gruvbox'
		section_separators = { "", "" },
		component_separators = { "", "" },
	},
	sections = {
		lualine_b = { "branch", "diff", "diagnostics" },
	},
})
