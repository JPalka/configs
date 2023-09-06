-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

local function get_visual_selection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

return {
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
      "nvim-lua/plenary.nvim",
      "princejoogie/dir-telescope.nvim",
      "folke/trouble.nvim",
    },
    config = function()
      local opts = {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "bottom" },
          sorting_strategy = "descending",
          winblend = 0,
          mappings = {
            i = {
              ["<c-j>"] = require("telescope.actions").move_selection_next,
              ["<c-k>"] = require("telescope.actions").move_selection_previous,
              ["<esc>"] = require("telescope.actions").close,
              -- ["<m-t>"] = trouble.open_with_trouble,
              -- ["<c-t>"] = trouble.open_selected_with_trouble,
              ["<m-q>"] = require("telescope.actions").send_to_qflist + require("telescope.actions").open_qflist,
              ["<c-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
            },
          },
        },
      }
      require("telescope").setup(opts)
    end,
  },
}
