function! FindHelp()
  try
    let output = system("find . -type f | fzy")
  catch /Vim:Interrupt/
  endtry
  redraw!

  if v:shell_error == 0 && !empty(output)
    1 wincmd w
    wincmd o
    exe 'vsplit' . output
  endif
endfunction
