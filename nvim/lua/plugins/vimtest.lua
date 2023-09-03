-- stylua: ignore

return {
  "vim-test/vim-test",
  cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast" },
  keys = { "<leader>rr", "<leader>R", "<Leader>rf" },
  dependencies = { "vim-tmux-runner" },
  config = function()
    local nnoremap = require("util").nmap

    vim.g["test#strategy"] = "vtr"

    nnoremap("<Leader>rr", ":TestNearest<CR>")
    nnoremap("<Leader>R", ":TestFile<CR>")
    nnoremap("<Leader>rf", ":TestSuite<CR>")
    -- nmap("<Leader>tl", ":TestLast<CR>")
  end,
}
