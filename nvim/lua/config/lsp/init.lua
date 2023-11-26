require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "jsonls",
    "html",
    "tailwindcss",
    "tsserver",
  },
})
require("fidget").setup()

require("config.lsp.diagnostics").setup()
require("config.lsp.handlers").setup()

local lsp = require("lspconfig")
local options = require("config.lsp.options")

require("config.lsp.null-ls").setup(lsp, options)
require("config.lsp.solargraph").setup(lsp, options)
require("config.lsp.eslint").setup(lsp, options)
require("config.lsp.typescript").setup(lsp, options)

local function setup(server, extension)
  lsp[server].setup(vim.tbl_extend("force", options, extension or {}))
end

setup(
  "jsonls",
  { settings = { json = { schemas = require("schemastore").json.schemas() } } }
)
-- TODO: fix tailwind
setup("tailwindcss")
-- setup("tailwindcss", { root_dir = lsp.util.root_pattern("tailwind.config.js") })
setup("html")
setup("yamlls")
setup("lua_ls")
