vim.keymap.set("o", "ir", "i[")
vim.keymap.set("o", "ar", "a[")
vim.keymap.set("o", "ia", "i<")
vim.keymap.set("o", "aa", "a<")

require("nvim-surround").setup({
  surrounds = {
    aliases = {
      ["q"] = { "'", '"', "`" },
      ["b"] = { ")", "]", "}", ">" },
      ["s"] = { ")", "]", "}", ">", "'", '"', "`" },
    },
  },
})
