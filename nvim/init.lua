require("builtins")
require("util")
require("options")

vim.defer_fn(function()
  require("plugins")
end, 0)

-- TODO: figure out what is it for
-- vim.g["ruby_path"] = vim.fn.expand("~/.asdf/shims/ruby")
-- vim.g["loaded_ruby_provider"] = 0
