require("giraffe3.packer")
require("giraffe3.remap")
vim.o.number = true
vim.o.relativenumber = true
vim.opt.clipboard = "unnamedplus"

------ Alte init.lua hier angefügt damit init.lua clean bleibt --------

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
elseif vim.fn.has("linux") == 1 then
	-- Arch Linux (und andere Linux-Distributionen) spezifische Befehle
	vim.api.nvim_create_autocmd("BufReadPost", {
		pattern = "*.pdf",
		callback = function()
			local pdf_path = vim.fn.expand("%:p")
			print("Öffne PDF mit Firefox: " .. pdf_path)

			-- Verwende den Befehl "firefox" zum Öffnen von PDFs unter Linux
			vim.fn.jobstart({
				"firefox",
				pdf_path,
			}, { detach = true })

			vim.cmd("bd!") -- Buffer schließen
		end,
	})
end

vim.cmd("colorscheme tokyonight")
