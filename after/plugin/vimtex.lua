-- Aktiviert Filetype-spezifische Plugins und Indentation
vim.cmd("filetype plugin indent on")

-- Aktiviert Syntax-Highlighting
vim.cmd("syntax enable")

-- Viewer-Methode: zathura (du kannst das auf 'sumatrapdf' ändern, siehe unten)
vim.g.vimtex_view_method = "sumatrapdf"
-- Oder alternativ: manueller Viewer mit Optionen (z.B. Okular)

vim.g.vimtex_view_general_viewer = "C:\\Users\\alexa\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe"
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

-- Compiler-Backend auf latexrun ändern (Standard ist latexmk)
vim.g.vimtex_compiler_method = "latexrun"

-- Lokaler Leader-Key (z. B. für \ll oder \lv etc.)
--
