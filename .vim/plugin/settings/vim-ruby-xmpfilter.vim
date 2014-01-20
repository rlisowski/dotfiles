" Gvim
autocmd FileType ruby nmap <buffer> <M-r> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <M-r> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <M-r> <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <M-m> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <M-m> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <M-m> <Plug>(xmpfilter-mark)

" Terminal
autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-mark)
