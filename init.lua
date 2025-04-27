require("giraffe3")
-- In der init.lua
if vim.fn.has("macunix") == 1 then
	-- macOS-spezifische Keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

	-- macOS-spezifische Befehle
	vim.api.nvim_create_autocmd("BufReadPost", {
		pattern = "*.pdf",
		callback = function()
			local pdf_path = vim.fn.expand("%:p")
			print("Öffne PDF: " .. pdf_path)

			-- Verwende macOS-spezifischen Befehl für Chrome
			vim.fn.jobstart({
				"open",
				"-a",
				"Google Chrome",
				pdf_path,
			}, { detach = true })

			vim.cmd("bd!") -- Buffer schließen, damit kein "scuffed code" angezeigt wird
		end,
	})
else
	-- Windows-spezifische Keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

	-- Windows-spezifische Befehle
	vim.api.nvim_create_autocmd("BufReadPost", {
		pattern = "*.pdf",
		callback = function()
			local pdf_path = vim.fn.expand("%:p")
			print("Öffne PDF: " .. pdf_path)

			-- Verwende cmd.exe, um Sumatra richtig mit der PDF zu starten
			vim.fn.jobstart({
				"cmd",
				"/c",
				"start",
				"/max",
				"",
				"chrome",
				pdf_path,
			}, { detach = true })

			vim.cmd("bd!") -- Buffer schließen, damit kein "scuffed code" angezeigt wird
		end,
	})
end

vim.g.maplocalleader = ","
vim.cmd("colorscheme tokyonight")
