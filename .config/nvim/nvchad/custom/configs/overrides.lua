local M = {}

M.treesitter = {
  ensure_installed = {
    "astro",
    "css",
    "dart",
    "dockerfile",
    "html",
    "graphql",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "scss",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
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
    "prettier",
    "pyright", -- python
    "tailwindcss-language-server",
    "typescript-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
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

return M
