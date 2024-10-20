" https://stackoverflow.com/questions/630884/opening-vim-help-in-a-vertical-split-window/18797550#18797550
autocmd BufWinEnter <buffer> wincmd L

" https://vi.stackexchange.com/questions/7944/jump-to-next-identifier-in-vim-help-files
nnoremap <buffer> i :call search('\v\\|.{-}\\|')<CR>
nnoremap <buffer> o :call search('\v\\|.{-}\\|', 'b')<CR>
nnoremap <buffer> <c-l> <c-]>
nnoremap <buffer> <c-h> <c-o>
nnoremap <buffer> p <c-]>
nnoremap <buffer> u <c-o>
