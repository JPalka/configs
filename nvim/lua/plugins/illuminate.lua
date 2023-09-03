-- stylua: ignore

return {
  "RRethy/vim-illuminate",
  event = { "CursorHold" },
  config = function()
    require("illuminate").configure({
      providers = { "lsp", "treesitter", "regex" },
      delay = 200,
      filetypes_denylist = { "dirvish", "fugitive", "NvimTree" },
      under_cursor = false,
    })
  end,
}
