"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_enable_balloons = 1
let g:syntastic_loc_list_height=2
" let g:syntastic_mode_map = { 'mode': 'active',
"       \ 'active_filetypes': ['ruby'],
"       \ 'passive_filetypes': ['javascript'] }
" change symbols
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'

" let g:syntastic_ruby_checkers=['mri','rubylint','rubocop']
