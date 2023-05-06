local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = {
  "astro",
  "cssls",
  "clangd",
  "dartls",
  "dockerls",
  "eslint",
  "graphql",
  "html",
  "jsonls",
  "pyright",
  "tailwindcss",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = vim.loop.cwd,
  }
end

--
-- lspconfig.pyright.setup { blabla}
