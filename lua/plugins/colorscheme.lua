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
      -- kabuki or afterlife
      style = "afterlife", -- The theme comes in two styles: kabuki or afterlife
      terminal_colors = true, -- Use colors used when opening a `:terminal`
      invert_colors = {
        -- Invert colors for the following syntax groups
        cursor = true,
        diff = true,
        error = true,
        search = true,
        selection = false,
        signs = false,
        statusline = true,
        tabline = false,
      },
      font_style = {
        -- Style to be applied to different syntax groups
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        search = { bold = true },
      },
      -- Plugin integrations. Use `default = false` to disable all integrations.
      plugins = { default = true },
      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param groups Highlight groups
      ---@param colors ColorScheme
      on_highlights = function(groups, colors) end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      -- colorscheme = "hybrid",
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "onedark",
      -- colorscheme = "onedark",
      colorscheme = "nightcity",
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
