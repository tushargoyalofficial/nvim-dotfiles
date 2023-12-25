require "custom.commands"

require "custom.autocmds"

local opt = vim.opt
opt.title = true
opt.foldmethod="expr"
opt.foldexpr="nvim_treesitter#foldexpr()"

if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h10"

  vim.g.neovide_refresh_rate = 120

  vim.g.neovide_cursor_vfx_mode = "railgun"

  vim.keymap.set("i", "<c-s-v>", "<c-r>+")
  vim.keymap.set("i", "<c-r>", "<c-s-v>")
end

