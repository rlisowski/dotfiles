return {
  "folke/snacks.nvim",
  opts = {
    lazygit = {
      win = {
        border = "rounded",
        wo = {
          winhighlight = "FloatBorder:SnacksLazygitBorder",
        },
      },
    },
    picker = {
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
