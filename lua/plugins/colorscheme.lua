return {
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
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
