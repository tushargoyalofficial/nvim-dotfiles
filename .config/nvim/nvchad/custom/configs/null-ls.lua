local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.code_actions.eslint,
  b.completion.vsnip,
  b.diagnostics.pylint,
  b.diagnostics.stylelint,

  b.formatting.dart_format,
  b.formatting.fixjson,
  b.formatting.prettier,     -- so prettier works with all files

  b.formatting.stylua,       -- Lua

  b.formatting.clang_format, -- cpp
}

null_ls.setup {
  debug = true,
  sources = sources,
}
