-- require("util")

-- vim.defer_fn(function()
--   require("plugins")
-- end, 0)

-- TODO: figure out what is it for
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

require("builtins")
require("keybindings")
require("lazy").setup(
  "plugins",
  {
    change_detection = {
      notify = false,
    }
  }
)
require("options")
