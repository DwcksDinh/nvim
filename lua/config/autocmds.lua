-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

-- dont list quickfix buffers
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.fs,*.fsx,*.fsi",
  command = [[set filetype=fsharp]],
})

-- autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = "*.html",
--   command = [[set filetype=html]],
-- })

-- require("ionide").setup({})

-- require("neo-img").setup()

-- require("actually-doom").setup({
--   game = {
--     kitty_graphics = true,
--     tmux_passthrough = true,
--   },
-- })

vim.cmd("hi LineNr guibg=NONE")
vim.cmd([[autocmd BufRead * silent! %s/\r//g]])
