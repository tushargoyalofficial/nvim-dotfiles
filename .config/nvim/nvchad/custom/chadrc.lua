---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "bearded-arc",
	theme_toggle = { "bearded-arc", "one_light" },
	transparency = false,

	tabufline = {
    lazyload = false,
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
