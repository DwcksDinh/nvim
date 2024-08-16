return {
  -- {
    -- "ellisonleao/gruvbox.nvim",
    -- opts ={
    --   terminal_colors = true, -- add neovim terminal colors
    --   undercurl = true,
    --   underline = true,
    --   bold = true,
    --   italic = {
    --     strings = true,
    --     emphasis = true,
    --     comments = true,
    --     operators = false,
    --     folds = true,
    --   },
    --   strikethrough = true,
    --   invert_selection = false,
    --   invert_signs = false,
    --   invert_tabline = false,
    --   invert_intend_guides = false,
    --   inverse = true, -- invert background for search, diffs, statuslines and errors
    --   contrast = "", -- can be "hard", "soft" or empty string
    --   palette_overrides = {},
    --   overrides = {},
    --   dim_inactive = false,
    --   transparent_mode = true,
    -- },
    
    -- "folke/tokyonight.nvim",
    -- opts = {
    --   transparent = true,
    --   styles = {
    --     sidebars = "transparent",
    --     floats = "transparent",
    --   },
    -- },
  -- },

  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme('everforest')
      end
  },


  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  }
}
