-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- ẩn kí tự ^M
vim.opt.binary = false
vim.opt.eol = false
vim.opt.fileformats = "dos,unix,mac"
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
-- remove line number margin
vim.o.signcolumn = "yes:1" -- set it no if you don't want to show sign column
-- show error striethrough instead of curly underline (my wezterm doesnt support it)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { strikethrough = true, sp = "Red" })

vim.o.shell = "nu.exe"
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellxquote = ""

if vim.g.neovide then
  vim.g.neovide_input_ime = true
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_cursor_animation_length = 0.04
  vim.g.neovide_cursor_trail_size = 0.7
  vim.g.neovide_cursor_vfx_mode = "sonicboom"

  vim.g.neovide_scroll_animation_length = 0

  vim.g.neovide_transparency = 1

  vim.g.neovide_padding_top = 12
  vim.g.neovide_padding_left = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_bottom = 0
end
