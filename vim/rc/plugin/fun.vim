" https://learnvimscriptthehardway.stevelosh.com/chapters/30.html
function AddSemicolonAtTheLineEnd()
  execute "normal! mqA;\<esc>`q"
endfunction
