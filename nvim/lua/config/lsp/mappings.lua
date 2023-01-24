local util = require("util")

local M = {}

local bmap = function(mode, keys, action)
  util.noremap(mode, keys, action, { buffer = true })
end

function M.setup()
  bmap("n", "gD", vim.lsp.buf.definition)
  bmap("n", "gt", vim.lsp.buf.references)
  bmap("n", "<leader>P", vim.lsp.buf.format)

  bmap({ "n", "v" }, "<C-a>", "<CMD>Lspsaga code_action<CR>")
  bmap("n", "gh", "<CMD>Lspsaga lsp_finder<CR>")
  bmap("n", "gd", "<CMD>Lspsaga peek_definition<CR>")
  bmap("n", "gr", "<CMD>Lspsaga rename<CR>")
  bmap("n", "<leader>o", "<CMD>Lspsaga outline<CR>")
  -- TODO: need to install markdown for treesitter for it to work
  bmap("n", "K", "<CMD>Lspsaga hover_doc<CR>")
  bmap("n", "gs", vim.lsp.buf.signature_help)

  bmap("n", "[r", "<CMD>Lspsaga diagnostic_jump_prev<CR>")
  bmap("n", "]r", "<CMD>Lspsaga diagnostic_jump_next<CR>")
  bmap("n", "<leader>d", "<CMD>Lspsaga show_line_diagnostics<CR>")
  bmap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
end

return M
