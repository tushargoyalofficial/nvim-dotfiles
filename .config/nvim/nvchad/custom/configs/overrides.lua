-- overriding default plugin configs!

local M = {}

M.treesitter = {
	ensure_installed = {
		"astro",
		"css",
		"bash",
		"dart",
		"dockerfile",
		"html",
		"graphql",
		"javascript",
		"json",
		"lua",
		"markdown",
		"markdown_inline",
    "prisma",
		"python",
		"scss",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	},
}

M.nvimtree = {
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },
  git = {
    enable = true,
    ignore = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"astro-language-server",
		"css-lsp",
		"diagnostic-languageserver",
		"dockerfile-language-server",
		"eslint-lsp",
		"graphql-language-service-cli",
		"html-lsp",
		"json-lsp",
    "prisma-language-server",
		"prettier",
		"tailwindcss-language-server",
		"typescript-language-server",

		-- python stuff
		"black",
		"mypy",
		"pyright",
		"ruff",

		-- shell
		"shfmt",
		"shellcheck",
		"bash-language-server",

		-- c/cpp stuff
		"clangd",
		"clang-format",
	},
}

return M
