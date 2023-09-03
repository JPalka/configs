-- stylua: ignore

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<Leader>t", "<cmd>NvimTreeToggle<cr>" },
    { "<Leader>f", "<cmd>NvimTreeFindFileToggle<cr>" },
  },
  config = function()
    require("nvim-tree").setup {}
  end
}
