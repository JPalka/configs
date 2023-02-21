local M = {}

function M.setup(_, options)
  local nls = require("null-ls")

  nls.setup({
    sources = {
      nls.builtins.formatting.prettierd,
    },
    on_attach = options.on_attach,
  })
end

return M
