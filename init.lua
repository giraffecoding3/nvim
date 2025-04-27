require("giraffe3")

-- Betriebssystemabhängige Keybindings
if vim.fn.has("macunix") == 1 then
	-- macOS-spezifische Keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
elseif vim.fn.has("win32") == 1 then
	-- Windows-spezifische Keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
end

vim.g.maplocalleader = ","

-- Autocommand für das Öffnen von PDFs
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*.pdf",
	callback = function()
		local pdf_path = vim.fn.expand("%:p")
		print("Öffne PDF: " .. pdf_path)

		-- macOS: Verwende den 'open'-Befehl, um die PDF in Google Chrome zu öffnen
		if vim.fn.has("macunix") == 1 then
			vim.fn.jobstart({
				"open",
				"-a",
				"Google Chrome",
				pdf_path
			}, { detach = true })

			-- Windows: Verwende 'start' für Chrome
		elseif vim.fn.has("win32") == 1 then
			vim.fn.jobstart({
				"cmd",
				"/c",
				"start",
				"chrome",
				pdf_path
			}, { detach = true })
		end

		-- Buffer schließen, damit kein "scuffed code" angezeigt wird
		vim.cmd("bd!")
	end,
})

-- Farben setzen
vim.cmd("colorscheme tokyonight")
