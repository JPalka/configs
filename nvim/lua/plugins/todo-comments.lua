-- stylua: ignore

return {
  "folke/todo-comments.nvim",
  cmd = "TodoTelescope",
  event = "BufReadPost",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    require("todo-comments").setup({})
  end,
}
