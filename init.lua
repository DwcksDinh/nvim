-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
-- remove line number margin
vim.o.signcolumn = "yes:1" -- set it no if you don't want to show sign column
vim.cmd("hi LineNr guibg=NONE")

vim.o.shell = "C:\\Users\\corcl\\AppData\\Local\\Programs\\nu\\bin\\nu.exe"
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellxquote = ""

require("neo-img").setup()

if vim.g.neovide then
  vim.g.neovide_input_ime = true
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_cursor_animation_length = 0.04
  vim.g.neovide_cursor_trail_size = 0.7
  vim.g.neovide_cursor_vfx_mode = "railgun"

  vim.g.neovide_scroll_animation_length = 0

  vim.g.neovide_transparency = 0.8

  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_bottom = 0
end
