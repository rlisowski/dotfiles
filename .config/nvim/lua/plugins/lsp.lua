return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          capabilities = {
            textDocument = {
              foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true,
              },
            },
          },
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
          end,
          settings = {
            yaml = {
              format = { enable = false }, -- disable yamlls built-in formatter
            },
          },
        },
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    after = "nvim-lspconfig",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
    cmd = "Lspsaga",
    config = function()
      require("lspsaga").setup({
        outline = {
          layout = "float",
          close_after_jump = true,
          max_height = 0.8,
          left_width = 0.3,
        },
        finder = {
          max_height = 0.8,
          left_width = 0.3,
          right_width = 0.5,
        },
        lightbulb = { enable = false },
        symbol_in_winbar = { enable = true },
      })
    end,
    keys = {
      { "K", "<cmd>Lspsaga peek_definition<CR>", desc = "Lspsaga peek definition" },
      { "gd", "<cmd>Lspsaga goto_definition<CR>", desc = "Lspsaga goto definition" },
      { "gh", "<cmd>Lspsaga finder<CR>", desc = "Lspsaga finder" },
    },
  },
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      ensure_installed = {
        "stylua",
        "shfmt",
        "lua_ls",
        "ruby_lsp",
      },
    },
  },
}
