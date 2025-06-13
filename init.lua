-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Hide ^M characters (fix for mixed fileformats)
vim.opt.binary = false
vim.opt.eol = true -- Ensure end-of-line is consistent
vim.opt.fileformats = "unix,dos,mac" -- Prioritize Unix format

-- Folding settings
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

-- Sign column settings
vim.o.signcolumn = "yes" -- Always show sign column to avoid shifting

-- Diagnostic underline settings
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "Red" })

-- Shell settings
vim.o.shell = "fish"
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellxquote = ""

-- Neovide-specific settings
if vim.g.neovide then
  vim.g.neovide_input_ime = true
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_cursor_animation_length = 0.04
  vim.g.neovide_cursor_trail_size = 0.7
  vim.g.neovide_cursor_vfx_mode = "sonicboom"
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_opacity = 1
  vim.g.neovide_padding_top = 12
  vim.g.neovide_padding_left = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_bottom = 0
end
