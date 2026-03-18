return {
  "folke/noice.nvim",
  opts = {
    views = {
      cmdline_popup = {
        position = {
          row = -2, -- near bottom (negative = from bottom)
          col = 0, -- left edge
        },
        size = {
          width = vim.o.columns - 4,
          height = "auto",
        },
      },
    },
  },
}
