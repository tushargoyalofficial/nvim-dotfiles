local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.code_actions.eslint,

  b.completion.vsnip,

  -- b.diagnostics.eslint,
  b.diagnostics.pylint,
  b.diagnostics.stylelint,
  -- b.diagnostics.tsc,

  b.formatting.dart_format,
  -- b.formatting.eslint,
  b.formatting.fixjson,
  b.formatting.prettier,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
