-- stylua: ignore

return {
  {
    "christoomey/vim-tmux-runner",
    keys = {
      {
        "<leader>ro",
        "<cmd>VtrOpenRunner<cr>",
        desc = "open runner pane",
      },
      {
        "<leader>ra",
        "<cmd>VtrAttachToPane<cr>",
        desc = "attach to pane",
      },
      {
        "<leader>rs",
        "<cmd>VtrSendLinesToRunner<cr>",
        desc = "send selected lines to runner",
        mode = { "v", "n" },
      },
    },
  },
}
