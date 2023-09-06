-- stylua: ignore

return {
  "vim-test/vim-test",
  cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast" },
  dependencies = { "vim-tmux-runner" },
  config = function()
    vim.g["test#strategy"] = "vtr"
  end,
}
