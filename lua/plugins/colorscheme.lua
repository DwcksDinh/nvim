return {
  {
    "rebelot/kanagawa.nvim",
    branch = "master",
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      style = "light",
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
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      colorscheme = "dawnfox",
      -- colorscheme = "hybrid",
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "onedark",
      -- colorscheme = "nightcity",
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
