local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = {
     "cssls",
     "dartls",
     "dockerls",
     "emmet_ls",
     "eslint",
     "grammarly",
     "graphql",
     "html",
     "jsonls",
     "prismals",
     "pyright",
     "stylelint_lsp",
     "sumneko_lua",
     "svelte",
     "tailwindcss",
     "tsserver",
     "vimls",
     "vuels",
     "yamlls"
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         root_dir = vim.loop.cwd,
      }
   end

   -- temporarily disable tsserver suggestions
   require("lspconfig").tsserver.setup {
      capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),

      init_options = {
         preferences = {
            disableSuggestions = true,
         },
      },

      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
      end,
   }
end

return M
