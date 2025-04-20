require("giraffe3")
-- In der init.lua
if vim.fn.has("macunix") == 1 then
	-- macOS-spezifische Keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
else
	-- Windows-spezifische Keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
end

vim.api.nvim_create_autocmd("BufReadPre", {
	pattern = "*.pdf",
	callback = function()
		local pdf_path = vim.fn.expand("%:p")
		print("Öffne PDF: " .. pdf_path)

		-- Verwende cmd.exe, um Sumatra richtig mit der PDF zu starten
		vim.fn.jobstart({
			"cmd",
			"/c",
			"start",
			"",
			"C:\\Users\\alexa\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe",
			pdf_path,
		}, { detach = true })

		vim.cmd("bd!") -- Buffer schließen, damit kein "scuffed code" angezeigt wird
	end,
})
