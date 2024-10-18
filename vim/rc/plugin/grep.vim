" https://learnvimscriptthehardway.stevelosh.com/chapters/32.html
" https://learnvimscriptthehardway.stevelosh.com/chapters/33.html
nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>

" https://phelipetls.github.io/posts/extending-vim-with-ripgrep/
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
set grepformat=%f:%l:%c:%m

function! GrepOperator(type)
  let saved_unnamed_register = @@

  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    echom a:type
  endif

  silent exe "grep! " . shellescape(@@) . " ."
  let @@ = saved_unnamed_register

  copen
endfunction
