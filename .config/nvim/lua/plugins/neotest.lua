return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "olimorris/neotest-rspec",
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("neotest").setup({
      watch = {
        enabled = false,
      },
      adapters = {
        require("rswag_neotest_adapter")({
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rspec",
            })
          end,
          root_files = { "Gemfile", ".rspec", ".gitignore" },
          filter_dirs = { ".git", "node_modules" },
          transform_spec_path = function(path)
            return path
          end,
          engine_support = true,
          results_path = function()
            return vim.fn.tempname()
          end,
          formatter = function()
            return "NeotestFormatter"
          end,
        }),
      },
    })
  end,
}
