---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins" -- path for lazy.nvim

M.ui = {
	theme = "ayu_dark",
	theme_toggle = { "ayu_dark", "one_light" },
	transparency = false,

	-- tabufline = {
	--   show_numbers = true
	-- }
}

M.mappings = require("custom.mappings")

return M
