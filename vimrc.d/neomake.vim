augroup vimrc_neomake
  au!
  autocmd BufWritePost * Neomake
augroup END
" let g:neomake_python_flake8_maker = {
" "     \ 'args': ['--ignore=E221,E241,E272,E251,W702,E203,E201,E202,E402',  '--format=default'],
" "     \ 'errorformat':
" "         \ '%E%f:%l: could not compile,%-Z%p^,' .
" "         \ '%A%f:%l:%c: %t%n %m,' .
" "         \ '%A%f:%l: %t%n %m,' .
" "         \ '%-G%.%#',
" "     \ }
" let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_enabled_makers = ['pyflakes']
let g:neomake_open_list = 2
let g:neomake_warning_sign = { 'text': 'W', 'texthl': 'WarningMsg' }
let g:neomake_error_sign = { 'text': 'E', 'texthl': 'ErrorMsg' }
