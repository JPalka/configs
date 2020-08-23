execute pathogen#infect()
filetype plugin indent on
syntax on
let g:ale_ruby_rubocop_executable = 'bundle'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
packloadall
silent! helptags ALL
