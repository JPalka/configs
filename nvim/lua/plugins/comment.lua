-- stylua: ignore

return {
  "numToStr/Comment.nvim",
  dependencies = { 
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require("Comment").setup({})
  end
}
