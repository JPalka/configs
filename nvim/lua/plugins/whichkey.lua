-- stylua: ignore

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({
      plugins = {
        presets = {
          operators = true, -- adds help for operators like d, y, ...
          motions = true,   -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true,   -- default bindings on <c-w>
          nav = true,       -- misc bindings to work with windows
          z = true,         -- bindings for folds, spelling and others prefixed with z
          g = true,         -- bindings for prefixed with g
        }
      },
    })
  end
}
