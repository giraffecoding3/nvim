vim.cmd([[autocmd VimEnter * Dashboard]])
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if vim.bo.filetype ~= "dashboard" then
			vim.opt.laststatus = 2
			vim.opt.showtabline = 2
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
					dofile(vim.fn.stdpath("config") .. "/after/plugin/lualine.lua")
				end
			end)
		end
	end,
})

vim.api.nvim_create_autocmd("BufLeave", {
	callback = function()
		if vim.bo.filetype == "dashboard" then
			vim.schedule(function()
				local ok, _ = pcall(require, "bufferline")
				if ok then
					dofile(vim.fn.stdpath("config") .. "/after/plugin/bufferline.lua")
				end
			end)
		end
	end,
})
