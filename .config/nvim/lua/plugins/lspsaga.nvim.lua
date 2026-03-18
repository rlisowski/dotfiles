return {
  {
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
    },
    cmd = "Lspsaga",
    config = function()
      require("lspsaga").setup({
        outline = {
          layout = 'float',
          close_after_jump = true,
          max_height = 0.8,
          left_width = 0.3,
        },
        finder = {
          max_height = 0.8,
          left_width = 0.3,
          right_width = 0.5,
        },
        lightbulb = { enable = false, },
        symbol_in_winbar = { enable = true, },
      })
    end,
    keys = {
      { "K", "<cmd>Lspsaga peek_definition<CR>", desc = "Lspsaga peek definition" },
      { "gd", "<cmd>Lspsaga goto_definition<CR>", desc = "Lspsaga goto definition" },
      { "gh", "<cmd>Lspsaga finder<CR>", desc = "Lspsaga finder" },
    },
  }
}
