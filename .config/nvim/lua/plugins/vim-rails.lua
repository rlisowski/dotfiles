return {
  {
    "tpope/vim-rails",
    ft = { "ruby", "eruby" },
    dependencies = {
      "tpope/vim-projectionist",
    },
  },
  {
    "tpope/vim-projectionist",
    lazy = false, -- must load early to pick up .projections.json
  },
}
