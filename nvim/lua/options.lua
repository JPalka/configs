local util = require("util")

vim.o.confirm = true

--Set highlight on search
vim.o.hlsearch = false

--Enable mouse mode
vim.o.mouse = ""

--Enable break indent ??
vim.o.breakindent = true

vim.o.cmdheight = 2
vim.o.showtabline = 2

--Save undo history
vim.opt.undofile = true
vim.opt.undolevels = 10000

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes"

--Set colorscheme
vim.o.termguicolors = true
vim.cmd([[colorscheme gruvbox]])

-- Put new windows below or right
vim.opt.splitbelow = false
vim.opt.splitright = true

-- disable swapfiles and backup
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

--Set indentation to 2 spaces always
vim.o.scrolloff = 8
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.opt.wrap = true

vim.opt.pumblend = 10 -- Popup blend
vim.opt.pumheight = 10

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

-- set line options
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.cursorline = true

-- highlight columns above 80
-- vim.cmd([[
--   highlight ColorColumn ctermbg=236 guibg=#212121
--   let &colorcolumn=join(range(81,500),",")
-- ]])

-- toggle columns highlight on focus
-- vim.cmd([[
--   augroup BgHighlight
--     autocmd!
--     autocmd WinEnter * let &colorcolumn=join(range(81,999),",")
--     autocmd WinLeave * set colorcolumn=0
--     autocmd WinEnter * set cul
--     autocmd WinLeave * set nocul
--   augroup END
-- ]])

-- don't redraw window on running macros
vim.opt.lazyredraw = true

vim.o.timeoutlen = 500

-- auto-resize panes
vim.cmd([[ autocmd VimResized * :wincmd = ]])

-- go to last loc when opening a buffer
vim.cmd([[
  autocmd BufReadPost * if &ft =~ 'gitcommit' && line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
]])

-- create directories on file save
vim.cmd([[ autocmd BufWritePre * lua require("util.dir").create_on_save() ]])
