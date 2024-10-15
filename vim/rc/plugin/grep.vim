" https://learnvimscriptthehardway.stevelosh.com/chapters/32.html
" https://learnvimscriptthehardway.stevelosh.com/chapters/33.html
nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>

function! GrepOperator(type)
  if a:type ==# 'v'
    exe "normal! `<v`>y"
  elseif a:type ==# 'char'
    exe "normal! `[v`]y"
  else
    echom a:type
  endif

  silent exe "grep! -R " . shellescape(@@) . " ."
  copen
endfunction
