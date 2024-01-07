inoremap jk <esc>

" https://superuser.com/questions/693528/vim-is-there-a-downside-to-using-space-as-your-leader-key/693644#693644
map <space> \

nmap <silent> <leader>f <Plug>(CommandT)
nmap <silent> <leader>b <Plug>(CommandTMRU)

" https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim/27206531#27206531
exe "set <M-t>=\et"
nnoremap <M-t> <C-^>
