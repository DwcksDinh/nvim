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
-- require("mcphub").setup({
--   --- `mcp-hub` binary related options-------------------
--   config = vim.fn.expand("~/.config/mcphub/servers.json"), -- Absolute path to MCP Servers config file (will create if not exists)
--   port = 37373, -- The port `mcp-hub` server listens to
--   shutdown_delay = 60 * 10 * 000, -- Delay in ms before shutting down the server when last instance closes (default: 10 minutes)
--   use_bundled_binary = false, -- Use local `mcp-hub` binary (set this to true when using build = "bundled_build.lua")
--
--   ---Chat-plugin related options-----------------
--   auto_approve = false, -- Auto approve mcp tool calls
--   auto_toggle_mcp_servers = true, -- Let LLMs start and stop MCP servers automatically
--   extensions = {
--     avante = {
--       make_slash_commands = true, -- make /slash commands from MCP server prompts
--     },
--   },
--
--   --- Plugin specific options-------------------
--   native_servers = {}, -- add your custom lua native servers here
--   ui = {
--     window = {
--       width = 0.8, -- 0-1 (ratio); "50%" (percentage); 50 (raw number)
--       height = 0.8, -- 0-1 (ratio); "50%" (percentage); 50 (raw number)
--       relative = "editor",
--       zindex = 50,
--       border = "rounded", -- "none", "single", "double", "rounded", "solid", "shadow"
--     },
--     wo = { -- window-scoped options (vim.wo)
--       winhl = "Normal:MCPHubNormal,FloatBorder:MCPHubBorder",
--     },
--   },
--   {
--     extensions = {
--       avante = {
--         enabled = true,
--         make_slash_commands = true,
--       },
--     },
--   },
--   on_ready = function(hub)
--     -- Called when hub is ready
--   end,
--   on_error = function(err)
--     -- Called on errors
--   end,
--   log = {
--     level = vim.log.levels.WARN,
--     to_file = false,
--     file_path = nil,
--     prefix = "MCPHub",
--   },
-- })

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
