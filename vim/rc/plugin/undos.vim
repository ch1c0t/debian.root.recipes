set undofile

if !isdirectory("$HOME/.local/share/vim/undos")
  call mkdir("$HOME/.local/share/vim/undos", "p")
endif

set undodir="$HOME/.local/share/vim/undos"
