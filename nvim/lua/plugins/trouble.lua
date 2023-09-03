-- stylua: ignore

return {
  "folke/trouble.nvim",
  event = "BufReadPre",
  cmd = { "TroubleToggle", "Trouble" },
  config = function()
    require("trouble").setup({
      position = "bottom",
      height = 10,
      width = 50,
      icons = true,
      mode = "document_diagnostics",
      fold_open = "",
      fold_closed = "",
      action_keys = {
        close = "q",
        cancel = "<esc>",
        refresh = "r",
        jump = { "<cr>", "g" },
        open_split = { "<c-x>" },
        open_vsplit = { "<c-v>" },
        jump_close = { "o" },
        toggle_mode = "m",
        toggle_preview = "P",
        hover = "K",
        preview = "p",
        previous = "k",
        next = "j",
      },
      indent_lines = true,
      auto_preview = true,
      signs = {
        error = "✗",
        warning = "",
        hint = "",
        information = "",
        other = "﫠",
      },
    })
  end
}
