return {
  {
    "stevearc/conform.nvim",
    opts = {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        yaml = { "yamlfmt" },
        lua = { "stylua" },
        python = { "isort", "black" },
        ruby = { "rubocop", lsp_format = "fallback" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
}
