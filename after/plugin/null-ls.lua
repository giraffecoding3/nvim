local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.csharpier,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.stylua,
	},
})

vim.cmd([[autocmd BufWritePre *.py lua vim.lsp.buf.format()]])
vim.cmd([[autocmd BufWritePre *.html lua vim.lsp.buf.format()]])
vim.cmd([[autocmd BufWritePre *.cs lua vim.lsp.buf.format()]])
vim.cmd([[autocmd BufWritePre *.lua lua vim.lsp.buf.format()]])
