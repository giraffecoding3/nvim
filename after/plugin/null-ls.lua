local null_ls = require("null-ls")

null_ls.setup({
	debug = true,
	sources = {
		-- null_ls.builtins.formatting.csharpier,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.clang_format,
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.lua", "*.py", "*.html", "*.cpp", "*.c", "*.h" },
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
