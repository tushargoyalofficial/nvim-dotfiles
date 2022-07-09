local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = { "bashls", "cssls", "denols", "emmet_ls", "eslint", "html", "pyright", "tsserver" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         root_dir = vim.loop.cwd,
      }
   end

   -- eslint setup
   require("lspconfig").eslint.setup {
      on_attach = attach,
      capabilities = capabilities,
      root_dir = require('lspconfig').util.root_pattern("package.json", ".eslintrc.js"),
   }

   -- deno ls setup
   require("lspconfig").denols.setup {
      on_attach = attach,
      capabilities = capabilities,
      root_dir = require('lspconfig').util.root_pattern("deno.json", "deno.jsonc"),
   }

   -- temporarily disable tsserver suggestions
   require("lspconfig").tsserver.setup {
      init_options = {
         preferences = {
            disableSuggestions = true,
         },
      },

      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
      end,

      capabilities = capabilities,
      root_dir = require('lspconfig').util.root_pattern("package.json", "tsconfig.json"),
      settings = {documentFormatting = true}
   }
end

return M
