-- stylua: ignore

return {
  "kylechui/nvim-surround",
  event = "VimEnter",
  config = function()
    require("nvim-surround").setup({
      surrounds = {
        aliases = {
          ["q"] = { "'", '"', "`" },
          ["b"] = { ")", "]", "}", ">" },
          ["s"] = { ")", "]", "}", ">", "'", '"', "`" },
        },
      },
    })
  end
}
