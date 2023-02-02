local M = {}

M.plugins = require "custom.plugins"

M.ui = {
  -- theme stuff
  theme = "nightowl",
  transparency = true,
  theme_toggle = { "nightowl", "gruvbox_light" },

  -- highlight
  hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M