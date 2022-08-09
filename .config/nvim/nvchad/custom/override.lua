-- overriding default plugin configs!

local M = {}

M.treesitter = {
   ensure_installed = {
      "css",
      "dart",
      "dockerfile",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "norg",
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

M.blankline = {
   filetype_exclude = {
      "help",
      "terminal",
      "alpha",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "nvchad_cheatsheet",
      "lsp-installer",
      "norg",
      "",
   },
}

M.alpha = {
   header = {
      val = {
         "           ▄ ▄                   ",
         "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
         "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
         "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
         "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
         "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
         "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
         "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
         "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
      },
   },
}

M.mason = {
   ensure_installed = {
      -- lua stuff
      "lua-language-server",
   
      -- web dev
      "css-lsp",
      "diagnostic-languageserver",
      "dockerfile-language-server",
      "eslint-lsp",
      "html-lsp",
      "json-lsp",
      "prettier",
      "pyright", -- python
      "tailwindcss-language-server",
      "typescript-language-server",
   
      -- shell
      "bash-language-server",
      "shellcheck",
   },
}

return M
