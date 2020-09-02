execute pathogen#infect()
filetype plugin indent on
syntax on
let g:ale_ruby_rubocop_executable = 'bundle'
packloadall
silent! helptags ALL

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set omnifunc=rubycomplete#Complete
set term=xterm-256color
set directory=~/.vim_backup//

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:molokai_original = 1
let g:rubycomplete_use_bundler = 1

color molokai

" KEY MAPPINGS
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nnoremap J :m .+1<CR>
nnoremap K :m .-2<CR>

xnoremap J :m .+1<CR>
xnoremap K :m .-2<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
