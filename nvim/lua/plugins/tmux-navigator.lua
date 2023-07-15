-- stylua: ignore

return {
  {
    "aserowy/tmux.nvim",
    keys = {
      { "<C-h>", [[<cmd>lua require('tmux').move_left()<cr>]] },
      { "<C-l>", [[<cmd>lua require('tmux').move_right()<cr>]] },
      { "<C-j>", [[<cmd>lua require('tmux').move_top()<cr>]] },
      { "<C-k>", [[<cmd>lua require('tmux').move_bottom()<cr>]] },
    },
    opts = {
      navigation = { enable_default_keybindings = true },
      resize = { enable_default_keybindings = false },
    },
  },
}
