-- overriding default plugin configs!

local M = {}

M.treesitter = {
	ensure_installed = {
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
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"html",
			"svelte",
			"vue",
			"markdown",
		},
	},
}

M.nvimtree = {
	filters = {
		dotfiles = false,
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
		"css-lsp",
		"dockerfile-language-server",
		"eslint-lsp",
		"graphql-language-service-cli",
		"html-lsp",
		"json-lsp",
		"prisma-language-server",
		"prettierd",
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

M.cmp = {
	sources = {
		-- trigger_characters is for unocss lsp
		{ name = "nvim_lsp", trigger_characters = { "-" } },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "codeium" },
		{ name = "nvim_lua" },
	},
	experimental = {
		ghost_text = true,
	},
}

return M
