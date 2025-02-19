return {
  -- {
  --   "rebelot/kanagawa.nvim",
  --   branch = "master",
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --   },
  -- },
  -- {
  --   "HoNamDuong/hybrid.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --   },
  -- },
  -- {
  --   "bluz71/vim-nightfly-colors",
  --   name = "nightfly",
  --   lazy = false,
  --   priority = 1000,
  --   init = function()
  --     vim.g.nightflyTransparent = true
  --   end,
  -- },
  -- {
  --   "aliqyan-21/darkvoid.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("darkvoid").setup({
  --       transparent = true,
  --       glow = true,
  --       colors = {
  --         plugins = {
  --           lualine = false, -- make this to false
  --         },
  --       },
  --     })
  --     vim.cmd.colorscheme("darkvoid")
  --   end,
  -- },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   opts = {
  --     styles = {
  --       bold = true,
  --       italic = true,
  --       transparency = true,
  --     },
  --   },
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  -- {
  --   "dgox16/oldworld.nvim",
  --   priority = 1000,
  --   opts = {
  --     variant = "oled",
  --   },
  -- },
  -- {
  --   "tiagovla/tokyodark.nvim",
  --   opts = {
  --     transparent_background = true,
  --   },
  -- },
  -- { "savq/melange-nvim" },
  -- {
  --   "rjshkhr/shadow.nvim",
  --   priority = 1000,
  -- },
  { "navarasu/onedark.nvim", opts = {
    transparent = true,
  } },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      -- colorscheme = "hybrid",
      -- colorscheme = "tokyonight-storm",
      colorscheme = "onedark",
      -- colorscheme = "shadow",
      -- colorscheme = "tokyodark",
      -- colorscheme = "shadow",
      -- colorscheme = "nightfly",
      -- colorscheme = "darkvoid",
      -- colorscheme = "melange",
      -- colorscheme = "rose-pine-moon",
    },
  },
}
