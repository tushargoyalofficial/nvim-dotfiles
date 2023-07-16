local null_ls = require("null-ls")

local b = null_ls.builtins
local codeaction = b.code_actions
local completion = b.completion
local format = b.formatting
local lint = b.diagnostics

local sources = {

	-- webdev stuff
	codeaction.eslint,
	completion.vsnip,
	lint.stylelint,
	format.prettier,
	format.fixjson,

	-- Dart/Flutter
	format.dart_format,

	-- Pythons
	format.black,
	lint.mypy.with({
		extra_args = function()
			local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_DEFAULT_ENV") or "/usr"
			return { "--python-executable", virtual .. "/bin/python3" }
		end,
	}),
	lint.ruff,

	-- Lua
	format.stylua,

	-- Shell
	format.shfmt,
	lint.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

	-- cpp
	format.clang_format,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
