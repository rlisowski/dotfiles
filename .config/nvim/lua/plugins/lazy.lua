return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      integrations = {
        snacks = true, -- This is the magic switch
        telescope = true,
        mason = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
