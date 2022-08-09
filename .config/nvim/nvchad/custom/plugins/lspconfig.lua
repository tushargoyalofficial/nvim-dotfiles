local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "bashls", "cssls", "dartls", "eslint", "graphql", "html", "pyright", "tailwindcss", "tsserver" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		root_dir = vim.loop.cwd,
	})
end
