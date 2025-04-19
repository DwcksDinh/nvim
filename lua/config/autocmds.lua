-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

-- dont list quickfix buffers
-- autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = "*.fs,*.fsx,*.fsi",
--   command = [[set filetype=fsharp]],
-- })

-- autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = "*.html",
--   command = [[set filetype=html]],
-- })

-- require("ionide").setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })

-- require("neo-img").setup()

vim.cmd("hi LineNr guibg=NONE")
vim.cmd([[autocmd BufRead * silent! %s/\r//g]])
