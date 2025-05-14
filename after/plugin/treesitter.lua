require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the listed parsers MUST always be installed)
	ensure_installed = {
		"python",
		"javascript",
		"typescript",
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"c_sharp",
		"html",
		"css",
		"tsx", -- für TypeScript JSX
		"json", -- optional, aber oft nützlich für Web-Entwicklung
	},
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	-- Füge diese 'fold' Sektion hinzu oder erweitere sie
	fold = {
		enable = true, -- Aktiviere das Einklappen mit Treesitter
		sign = "▎", -- Optional: Setze ein Faltzeichen
		-- Weitere Optionen können hier gesetzt werden (siehe :help nvim-treesitter-folding)
	},
})

-- Setze die Vim-Optionen für das Einklappen
vim.opt.foldmethod = "expr" -- Verwende einen Ausdruck zur Berechnung der Faltbereiche
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Verwende Treesitter für den Ausdruck
vim.opt.foldenable = true -- Aktiviere das Einklappen
vim.opt.foldlevelstart = 99 -- Starte mit allen Faltungen geöffnet (ein hoher Wert öffnet alle)
