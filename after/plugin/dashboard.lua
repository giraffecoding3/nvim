vim.cmd([[autocmd VimEnter * Dashboard]])
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if vim.bo.filetype ~= "dashboard" then
			vim.opt.laststatus = 2
		end
	end,
})

vim.api.nvim_create_autocmd("BufLeave", {
	callback = function()
		if vim.bo.filetype == "dashboard" then
			vim.schedule(function()
				vim.opt.laststatus = 2
				local ok, lualine = pcall(require, "lualine")
				if ok then
					lualine.setup(require("lualine").setup()) -- falls du eine separate Datei hast
					-- oder schreibe hier direkt deine Lualine-Setup-Tabelle rein
				end
			end)
		end
	end,
})
