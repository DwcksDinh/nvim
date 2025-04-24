-- Keset('n', '\\', 'zz')ymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Chế độ normal (Normal mode)
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<Tab>", "E", { noremap = true, silent = true })
map("n", "<S-Tab>", "B", { noremap = true, silent = true })

-- Sql query
-- map("n", "<leader>r", ":'<,'>DB", { noremap = true, silent = true })

-- Oil
-- map("n", "<leader>o", "<CMD>Oil<CR>", { noremap = true, silent = true, desc = "Open parent directory" })

--bring ctrl i back
map("n", "<Tab>", "<C-i>", { noremap = true, silent = true })

-- add keymap to remove trailing whitespace
map("n", "<C-\\>", ":%s/\\r//g<CR>", { noremap = true, silent = true })

-- Terminal
map("t", "<Leader><ESC>", "<C-\\><C-n>", { noremap = true })

-- paste nhưng không thay đổi register
map("x", "<leader>P", [["_dP]])

-- Tăng tốc độ cuộn của Ctrl-E và Ctrl-Y
map("n", "<C-e>", "3<C-e>", { noremap = true, silent = true })
map("n", "<C-y>", "3<C-y>", { noremap = true, silent = true })

-- Xóa dòng nhưng không thay đổi register
map("v", "c", [["_c]])
map("n", "c", [["_c]])
map("n", "x", [["_x]])
map("n", "<S-X>", [["_dd]])
map("v", "x", [["_x]])

-- git keymaps
map("n", "<leader>gl", function()
  require("snacks").lazygit.log()
end, { desc = "Lazygit Logs" })
map("n", "<leader>gbr", function()
  require("snacks").picker.git_branches({ layout = "select" })
end, { desc = "Pick and Switch Git Branches" })

map("i", "kj", "<ESC>")

-- Chế độ lệnh (Command mode)
map("c", "<C-h>", "<Left>", { noremap = true, silent = true })
map("c", "<C-l>", "<Right>", { noremap = true, silent = true })

-- Ctrl + A
-- map("n", "<C-s>", "<CMD>w<CR>=ap", { noremap = true, silent = true })

-- zz
map("n", "\\", "zz", { noremap = true, silent = true })
