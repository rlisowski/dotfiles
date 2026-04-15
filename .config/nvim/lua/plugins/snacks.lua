return {
  "folke/snacks.nvim",
  opts = {
    lazygit = {
      win = {
        border = "rounded",
        wo = {
          winhighlight = "FloatBorder:FloatBorder,NormalFloat:NormalFloat",
        },
      },
    },
    picker = {
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          ignored = true,
          layout = {
            preview = true,
            layout = {
              box = "horizontal",
              backdrop = false,
              height = 0,
              width = 0.8,
              min_width = 120,
              row = 1,
              col = 1,
              border = "rounded",
              {
                box = "vertical",
                { win = "list", title = " Explorer ", border = "right" },
              },
              { win = "preview", title = " Preview ", width = 0.6 },
            },
          },
          -- layout = {
          --   preset = "dropdown",
          --   preview = true,
          --   layout = {
          --     height = 0,
          --     width = 0.4,
          --     min_width = 120,
          --     row = 1,
          --     col = 1,
          --   },
          -- },
        },
      },
    },
    zen = {
      win = {
        width = 150,
      },
    },
  },
}
