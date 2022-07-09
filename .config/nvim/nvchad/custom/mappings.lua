local M = {}

M.general = {
  n = {
      ["<C-q>"] = { "<cmd> :q! <CR>", "Exit Tab" },
      ["ss"] = { "<cmd> :split <CR>", "Horizontal split" },
      ["sv"] = { "<cmd> :vsplit <CR>", "Vertical split" },
  }
}

M.truzen = {
   n = {
      ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
      ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
      ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
   },
}

M.telescope = {
  n = {
      [";f"] = { "<cmd> Telescope find_files <CR>", "  find files" },
  }
}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.shade = {
   n = {
      ["<leader>s"] = {
         function()
            require("shade").toggle()
         end,

         "   toggle shade.nvim",
      },
   },
}

M.nvimtree = {
  n = {
      ["<sf>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
  }
}

return M
