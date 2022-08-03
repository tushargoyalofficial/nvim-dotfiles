local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "bashls", "cssls", "dartls", "denols", "emmet_ls", "eslint", "graphql", "html", "pyright", "tailwindcss", "tsserver" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		root_dir = vim.loop.cwd,
	})
end

-- eslint setup
lspconfig.eslint.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("package.json", ".eslintrc.js"),
})

-- deno ls setup
lspconfig.denols.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
})

-- temporarily disable tsserver suggestions
lspconfig.tsserver.setup ({
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json"),
	settings = {documentFormatting = true}
})
