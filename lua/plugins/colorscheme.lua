return {
  {
    "rebelot/kanagawa.nvim",
    branch = "master",
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      -- vim.o.background = "light"
    end,
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      -- style = "light",
      -- transparent = false,
    },
  },
  { "EdenEast/nightfox.nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      transparent = true,
      on_highlights = function(hlgroup, color)
        hlgroup.NormalFloat = { bg = color.none, fg = color.fg }
      end,
    },
  },
  {
    "cryptomilk/nightcity.nvim",
    version = "*",
    opts = {
      style = "kabuki", -- kabuki or afterlife
    },
  },
  { "aliqyan-21/darkvoid.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    opts = {
      -- onedark onelight onedark_vivid onedark_dark
      options = {
        transparency = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-lotus",
      colorscheme = "onedark_vivid",
      -- colorscheme = "kanagawa-paper-canvas",
      -- colorscheme = "NeoSolarized",
      -- colorscheme = "dawnfox",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "hybrid",
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "shadow",
      -- colorscheme = "nightfly",
    },
  },
}
