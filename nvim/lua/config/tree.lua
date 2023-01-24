local nnoremap = require("util").nnoremap

nnoremap("<Leader>t", ":NvimTreeToggle<CR>")
nnoremap("<Leader>f", ":NvimTreeFindFileToggle<CR>")

require("nvim-tree").setup()
