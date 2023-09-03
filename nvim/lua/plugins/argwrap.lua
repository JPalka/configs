-- stylua: ignore

return {
  "FooSoft/vim-argwrap",
  config = function()
    require("util").nnoremap("<leader>jj", ":ArgWrap<CR>")
  end
}
