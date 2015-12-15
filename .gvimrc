"Toggle Menu and Toolbar
set guioptions-=m " hide the menu
set guioptions-=T " hide the toolbar
set guioptions-=r " hide the scrollbars
set guioptions-=R " hide the scrollbars with vertical split
set guioptions-=l " hide the scrollbars
set guioptions-=L " hide the scrollbars with vertical split
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\else <Bar>
\set guioptions+=T <Bar>
\endif<CR>

" I don't known why this not work in .vimrc
color codeschool
hi NonText ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=#252c31 gui=NONE

highlight clear SignColumn
