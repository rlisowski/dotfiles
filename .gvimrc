"Toggle Menu and Toolbar
" set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\else <Bar>
\set guioptions+=T <Bar>
\endif<CR>
