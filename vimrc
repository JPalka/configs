set nocompatible

execute pathogen#infect()
filetype plugin indent on
syntax on
packloadall
silent! helptags ALL

" Required for operations modifying multiple buffers like rename.
set hidden
set shell=zsh
set cot+=preview
set nomodeline " SECOORITY!!!111!1
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set relativenumber
set noerrorbells
set incsearch
set scrolloff=8
set cmdheight=2
set updatetime=50
set number
set term=xterm-256color
set directory=~/.vim_backup//
set backspace=indent,eol,start
set ruler
set showtabline=2
set laststatus=2
setglobal tags=./tags;

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1
" let g:rubycomplete_use_bundler = 1
" set omnifunc=rubycomplete#Complete
set completeopt=menu,menuone,popup,noselect,noinsert

" let g:molokai_original = 1
let g:tmux_navigator_disable_when_zoomed = 1
let g:indentLine_enabled = 0
let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/requests/{}_request_spec.rb",
      \        "spec/features/{}_spec.rb",
      \        "spec/system/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/requests/{}_request_spec.rb",
      \        "spec/features/{}_spec.rb",
      \        "spec/system/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \   },
      \   "spec/requests/*_request_spec.rb": {
      \      "command": "request",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \   "spec/features/*_spec.rb": {
      \      "command": "feature",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.feature '{}' do\nend",
      \   },
      \   "spec/system/*_spec.rb": {
      \      "command": "system",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \ }

set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

color distinguished
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" CTRLP config

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1

" ALE config
" let g:ale_completion_enabled = 1
let g:ale_ruby_rubocop_executable = 'bundle'
" let g:ale_linters = {
  " \ 'ruby': ['solargraph']
  " \}

" COC config
let g:coc_global_extensions = ['coc-solargraph']

" Supertab config
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

" KEY MAPPINGS
let mapleader=" "

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>f :NERDTreeFind<CR>
" nmap <Leader>f :setlocal foldmethod=syntax<CR>
nmap <Leader>i :IndentLinesToggle<CR>

nmap <Leader>pp :Dispatch! rake<CR>
nmap <Leader>pr :tab Copen<CR>

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup JJ
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

command -nargs=* Dbundle Dispatch dbundle <args>
