local nnoremap = require("util").nmap

vim.g["test#strategy"] = "vtr"

-- TODO: remap those buggers
nnoremap("<Leader>rr", ":TestNearest<CR>")
nnoremap("<Leader>R", ":TestFile<CR>")
nnoremap("<Leader>rf", ":TestSuite<CR>")
-- nmap("<Leader>tl", ":TestLast<CR>")
