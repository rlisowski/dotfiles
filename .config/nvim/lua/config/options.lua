-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.clipboard:append("unnamedplus") -- allows neovim to access the system clipboard
opt.relativenumber = false

-- opt.scrolloff = 999 -- keeps the cursor vertically centered when scrolling

opt.tags:append(".git/tags")
