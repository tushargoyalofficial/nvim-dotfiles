-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local override = require "custom.override"

M.plugins = {
   status = {
      dashboard = true,
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
      ["goolord/alpha-nvim"] = override.alpha,
      ["williamboman/mason"] = override.mason,
   },

   user = require "custom.plugins",
}

M.ui = {
   theme = "decay",
   hl_add = require("custom.highlights").new_hlgroups,
   theme_toggle = { "decay", "gruvbox_light" },
   hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M
