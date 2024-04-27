-- require("util")

-- vim.defer_fn(function()
--   require("plugins")
-- end, 0)

-- vim.g["ruby_path"] = vim.fn.expand("~/.asdf/shims/ruby")
-- vim.g["loaded_ruby_provider"] = 0

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.vimwiki_map_prefix = "<Leader>v"

require("builtins")
require("lazy").setup(
  "plugins",
  {
    change_detection = {
      notify = false,
    }
  }
)
require("keybindings")
require("options")

vim.cmd [[
augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'config.lsp.jdtls'.setup()
augroup end
]]

