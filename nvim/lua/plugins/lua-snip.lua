-- stylua: ignore

return {
  "L3MON4D3/LuaSnip",
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local util = require("util")

    local function prequire(...)
      local status, lib = pcall(require, ...)
      if status then
        return lib
      end

      error("Upsi luasnip failed")
    end

    local luasnip = prequire("luasnip")

    luasnip.config.set_config({
      history = false,
      -- Update more often, :h events for more info.
      updateevents = "TextChanged,TextChangedI",
    })

    luasnip.add_snippets("ruby", require("snip.ruby"))

    -- Must be valid JSON without comma on end
    require("luasnip/loaders/from_vscode").lazy_load({
      paths = { "~/.config/nvim/snippets/" },
    })
    ---@diagnostic disable-next-line: different-requires
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
