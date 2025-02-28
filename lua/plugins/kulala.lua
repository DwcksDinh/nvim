return {
  {
    "mistweaverco/kulala.nvim",
    opts = {
      curl_path = "C:\\ProgramData\\chocolatey\\lib\\curl\\tools\\curl-8.10.1_1-win64-mingw\\bin\\curl.exe",
      additional_curl_options = { "--insecure", "-A", "Mozilla/5.0" },
      winbar = true,
      default_winbar_panes = {
        "body",
        "headers",
        "headers_body",
      },
      vscode_rest_client_environmentvars = true,
      disable_script_print_output = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local nvim_lsp = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local servers = {
        "kulala_ls",
      }
      for _, lsp in ipairs(servers) do
        if nvim_lsp[lsp] ~= nil then
          if nvim_lsp[lsp].setup ~= nil then
            nvim_lsp[lsp].setup({
              capabilities = capabilities,
            })
          else
            vim.notify("LSP server " .. lsp .. " does not have a setup function", vim.log.levels.ERROR)
          end
        end
      end
    end,
  },
  {
    "saghen/blink.cmp",

    build = "cargo build --release",
    version = "*",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = {
        preset = "default",
        ["<CR>"] = { "select_and_accept", "fallback" },
        cmdline = {
          preset = "default",
        },
      },
      completion = {
        -- Show documentation when selecting a completion item
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
      },

      appearance = {
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = "mono",
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = {
          "lsp",
          "path",
          "buffer",
        },
      },
    },
  },
}
