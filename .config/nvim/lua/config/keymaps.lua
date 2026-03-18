-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "cp", function()
  vim.fn.setreg("+", vim.fn.expand("%:."))
end, { desc = "Copy current file path" })

map("n", "K", "<cmd>Lspsaga peek_definition<CR>", { desc = "Lspsaga peek definition" })
