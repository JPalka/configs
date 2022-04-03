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

" FastFold config

nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

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

" COC config
let g:coc_global_extensions = ['coc-solargraph', 'coc-webpack', 'coc-yaml', 'coc-html']

" Supertab config
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

" Ripgrep config
let g:rg_binary = 'ag'

" " Ultisnips config
" let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" KEY MAPPINGS
let mapleader=" "

nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>F :setlocal foldmethod=syntax<CR>
nmap <Leader>i :IndentLinesToggle<CR>
nmap <Leader>T :tab term<CR>

nmap <Leader>pp :Dispatch! bundle exec rake<CR>
nmap <Leader>pr :tab Copen<CR>
nmap <Leader>pt :.Rails<CR>
nmap <Leader>ar :Dispatch! bundle exec rubocop -A %<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gh <Plug>(coc-references)
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

nmap <silent> <Leader>P :call CocAction('format')<cr>

" replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

nmap <C-P> :Files<CR>

" show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> <Leader>d :call <SID>show_documentation()<CR>

" nmap <Leader>pt <Plug>(coc-format-selected)

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
