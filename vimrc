set nocompatible

" Plugin definitions {{{
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jremmen/vim-ripgrep'
Plug 'sheerun/vim-polyglot'
Plug 'fannheyward/coc-react-refactor'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Konfekt/FastFold'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-projectionist'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-abolish'
Plug 'FooSoft/vim-argwrap'
Plug 'rhysd/clever-f.vim'
Plug 'tommcdo/vim-exchange' " probably not really needed. consider removing
Plug 'AndrewRadev/splitjoin.vim'

" colorschemes
Plug 'nanotech/jellybeans.vim'
Plug 'Lokaltog/vim-distinguished'

call plug#end()
" }}}

filetype plugin indent on
syntax on
packloadall
silent! helptags ALL

" General settings {{{
" Required for operations modifying multiple buffers like rename.
set hidden
set shell=zsh
set cot+=preview
set nomodeline " SECOORITY!!!111!1
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent " reconsider this option
set number
set relativenumber
set noerrorbells
set incsearch
set scrolloff=8
set cmdheight=2
set updatetime=4000
set term=xterm-256color
set directory=~/.vim_backup//
set backspace=indent,eol,start
set ruler
set showtabline=2
set laststatus=2
set shiftround
set showmatch
set completeopt=menu,menuone,preview,noselect,noinsert " prevew/popup options seem to be the same
setglobal tags=./tags;
color distinguished
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" status line {{{
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1
" let g:rubycomplete_use_bundler = 1
" set omnifunc=rubycomplete#Complete

" FastFold config {{{
nnoremap zuz <Plug>(FastFoldUpdate)

let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" }}}

" IndentLine config {{{

let g:indentLine_enabled = 0

" }}}

" projections {{{

let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/controllers/{}_controller_spec.rb",
      \        "spec/requests/{}_request_spec.rb",
      \        "spec/features/{}_spec.rb",
      \        "spec/system/{}_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/controllers/{}_controller_spec.rb",
      \        "spec/requests/{}_request_spec.rb",
      \        "spec/features/{}_spec.rb",
      \        "spec/system/{}_spec.rb",
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
      \   "spec/controllers/*_spec.rb": {
      \      "command": "controller",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \ }

" }}}

" COC config {{{
let g:coc_global_extensions = ['coc-solargraph', 'coc-webpack', 'coc-yaml', 'coc-html', 'coc-prettier', 'coc-tsserver', 'coc-snippets']
" }}}

" Supertab config {{{
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
" }}}

" Ripgrep config {{{
let g:rg_binary = 'ag'
" }}}

" vim-signify config {{{
set updatetime=100
let g:signify_sign_change = "~"
" }}}

" tmux navigator config {{{
let g:tmux_navigator_disable_when_zoomed = 1
" }}}

" FZF config {{{
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
" }}}

" }}}

" Key mappings {{{

" IMPORTANT! DONT USE esc for exiting insert mode
inoremap jk <esc>
inoremap <esc> <nop>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_next = '<tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<s-tab>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <Leader>x  <Plug>(coc-convert-snippet)

" KEY MAPPINGS
let mapleader=" "
let maplocalleader = "\\"

" nnoremap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>F :setlocal foldmethod=syntax<CR>
nnoremap <Leader>i :IndentLinesToggle<CR>
nnoremap <Leader>T :tab term<CR>
nnoremap <Leader>ce :vsplit $MYVIMRC<cr>
nnoremap <Leader>cr :source $MYVIMRC<cr>

nnoremap <Leader>pp :Dispatch! bundle exec rake<CR>
nnoremap <Leader>pr :tab Copen<CR>
nnoremap <Leader>pt :.Rails<CR>
nnoremap <Leader>ar :Dispatch! bundle exec rubocop -A %<CR>

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gh <Plug>(coc-references)

xnoremap <leader>a <Plug>(coc-codeaction-selected)
nnoremap <leader>a <Plug>(coc-codeaction-selected)
nnoremap <leader>jj :ArgWrap<CR>

" rails specific bindings
nnoremap <leader>rr :.Rails<CR>
nnoremap <leader>R :Rails<CR>
nnoremap <Leader>rc :Rails log:clear <bar> Rails tmp:clear <bar> Rails assets:clean<CR>

nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gp :Git pull<CR>

nnoremap <silent> <Leader>P :call CocAction('format')<cr>

" replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

nnoremap <C-P> :Files<CR>

" show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> <Leader>d :call <SID>show_documentation()<CR>

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
nnoremap <Leader>pt <Plug>(coc-format-selected)

" }}}

" autocommands and functions {{{

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup JJ
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" vim
augroup filetype_vim
      autocmd!
      autocmd FileType vim setlocal foldmethod=marker
augroup END

" ruby and rails
augroup filetype_ruby_rails
      autocmd!
      autocmd BufReadPost,BufNewFile *_spec.rb set filetype=rspec
      autocmd User Rails set ft=rails.ruby
augroup END

" just keep it to showcase command definition example. no longer used.
command -nargs=* Dbundle Dispatch dbundle <args>

" }}}

" VIM TUTORIAL STUFF {{{

" TODO: Add abbrevations? although they seem like a footgun

" remove these probably
" vnoremap <leader>" <esc>`<i'<esc>`>la'<esc>

" do usuniecia
" augroup filetype_html
"       autocmd!
"       autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
" augroup END

" in-header motion for markdown files
" augroup filetype_md
"       autocmd!
"       autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?\\(^--\\+$\\\\|^==\\+$\\)\rkvg_"<cr>
" augroup END
" onoremap ih :<c-u>execute "normal! ?\\(^--\\+$\\\\|^==\\+$\\)\rkvg_"<cr>

" do wywalenia
" augroup test
"       autocmd!
"       autocmd FileType ruby setlocal statusline=kurwa\ ruby\ file
" augroup END

nnoremap <leader>pb :execute "rightbelow vsplit " . bufname("#")<cr>
" }}}
