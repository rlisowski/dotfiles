if vim.loaded then
  vim.loader.enable()
end

vim.cmd('set runtimepath^=~/.vim runtimepath+=~/.vim/after') vim.o.packpath = vim.o.runtimepath vim.cmd('source ~/.vimrc')
vim.o.packpath = vim.o.runtimepath
vim.cmd('source ~/.vimrc')
