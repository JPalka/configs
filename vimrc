set nocompatible
"let $RUBYHOME=$HOME."/.rvm/rubies/default"
"set rubydll=$HOME/.rvm/rubies/default/lib/libruby.dylib

execute pathogen#infect()
filetype plugin indent on
syntax on
let g:ale_ruby_rubocop_executable = 'bundle'
packloadall
silent! helptags ALL

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

set cot+=preview
set nomodeline " SECOORITY!!!111!1
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set relativenumber
set nowrap
set noerrorbells
set incsearch
set scrolloff=8
set colorcolumn=100
set cmdheight=2
set updatetime=50
set number
set omnifunc=rubycomplete#Complete
set completefunc=rubycomplete#Complete
set term=xterm-256color
set directory=~/.vim_backup//
set backspace=indent,eol,start
set ruler
set showtabline=2
set laststatus=2
setglobal tags=./tags;
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:molokai_original = 1
let g:rubycomplete_use_bundler = 1
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

color molokai
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" KEY MAPPINGS
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
nmap <Leader>] :NERDTreeToggle<CR>
nmap <Leader>[ :NERDTreeFind<CR>
nmap <Leader>f :setlocal foldmethod=syntax<CR>
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
