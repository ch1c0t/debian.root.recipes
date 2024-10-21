nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>
nnoremap ]Q :cnewer<cr>
nnoremap [Q :colder<cr>

nnoremap ]l :lnext<cr>
nnoremap [l :lprevious<cr>
nnoremap ]L :lnewer<cr>
nnoremap [L :lolder<cr>

hi QuickFixLine ctermbg=Red

" https://vi.stackexchange.com/a/21739
augroup quickfix
  autocmd!
  autocmd QuickFixCmdPost [^l]* call OpenQuickFixList()
augroup END

function OpenQuickFixList()
  wincmd o
  vert cwindow
  wincmd p
  wincmd =
endfunction
