local present, null_ls = pcall(require, "null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- webdev stuff
   b.code_actions.eslint,
   b.code_actions.gitsigns,
   b.formatting.deno_fmt.with{ filetypes = { "typescript" } },
   b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
   b.completion.luasnip,
   b.completion.spell,
   b.diagnostics.write_good,
   b.diagnostics.eslint.with { filetypes = { "typescriptreact", "tsx" } },
   b.diagnostics.tsc,

   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

}

null_ls.setup {
   debug = true,
   sources = sources,
   save_after_format = false,

   on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
               group = augroup,
               buffer = bufnr,
               callback = function()
                  -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                  vim.lsp.buf.formatting_sync()
               end,
            })
      end
   end,
}
