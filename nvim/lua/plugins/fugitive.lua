-- stylua: ignore

local nnoremap = require("util").nnoremap

return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G" },
  config = function()
    vim.cmd([[
      autocmd Filetype gitcommit setlocal spell textwidth=72
      autocmd BufReadPost fugitive://* set bufhidden=delete
      autocmd Filetype fugitive nmap <buffer> czu 1czw
    ]])
  end,
}
