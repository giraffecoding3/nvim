local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "html", "lua_ls", "rust_analyzer", "pyright", "omnisharp" },
})
-- Funktion für LSP-Setup mit Standard-Capabilities
local function setup_lsp(server)
	lspconfig[server].setup({
		capabilities = capabilities,
	})
end

-- Server Setup mit Standard-Settings
local servers = { "html", "lua_ls", "rust_analyzer", "pyright", "omnisharp"}
for _, server in ipairs(servers) do
	setup_lsp(server)
end
