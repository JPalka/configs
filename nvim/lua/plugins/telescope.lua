-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

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
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<C-p>",
        builtin.find_files,
        desc = "Search files",
        mode = "n",
      },
      {
        "<C-\\>",
        builtin.live_grep,
        desc = "Live grep",
        mode = "n",
      },
      {
        "<C-b>",
        function()
          builtin.git_branches({
            attach_mappings = function(_, map)
              map("i", "<c-d>", actions.git_delete_branch)
              return true
            end,
          })
        end,
        mode = "n",
      },
      {
        "<leader>\\",
        function()
          builtin.grep_string({ default_text = vim.fn.expand("<cword>") })
        end,
        desc = "grep word under cursor",
        mode = "v",
      },
      {
        "<leader>\\",
        function()
          builtin.grep_string({ default_text = get_visual_selection() })
        end,
        desc = "grep selection",
        mode = "v",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "descending",
        winblend = 0,
        mappings = {
          i = {
            ["<c-j>"] = actions.move_selection_next,
            ["<c-k>"] = actions.move_selection_previous,
            ["<esc>"] = actions.close,
            -- ["<m-t>"] = trouble.open_with_trouble,
            -- ["<c-t>"] = trouble.open_selected_with_trouble,
            ["<m-q>"] = actions.send_to_qflist + actions.open_qflist,
            ["<c-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    },
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
