-- bootstrap lazy.nvim, LazyVim and your plugins
vim.env.PATH = vim.fn.expand("~/.local/share/mise/shims:") .. vim.env.PATH
require("config.lazy")
