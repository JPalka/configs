-- stylua: ignore

local nnoremap = require("util").nnoremap

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "jose-elias-alvarez/null-ls.nvim",
    "lua-dev.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "b0o/SchemaStore.nvim",
    "folke/lua-dev.nvim",
    "jose-elias-alvarez/typescript.nvim",
    "j-hui/fidget.nvim",
  },
  config = function()
    require("config.lsp")
  end,
}
