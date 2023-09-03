-- stylua: ignore

return {
  "numToStr/Comment.nvim",
  keys = { "gc", "gcc", "gb", "gbc" },
  dependencies = { 
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require("Comment").setup({})
  end
}
