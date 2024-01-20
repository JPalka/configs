-- stylua: ignore

local nnoremap = require("util").nnoremap

return {
  "lewis6991/gitsigns.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "folke/which-key.nvim" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add = {
          hl = "GitSignsAdd",
          text = "+",
          numhl = "GitSignsAddNr",
          linehl = "GitSignsAddLn",
        },
        change = {
          hl = "GitSignsChange",
          text = "~",
          numhl = "GitSignsChangeNr",
          linehl = "GitSignsChangeLn",
        },
        delete = {
          hl = "GitSignsDelete",
          text = "-",
          numhl = "GitSignsDeleteNr",
          linehl = "GitSignsDeleteLn",
        },
        topdelete = {
          hl = "GitSignsDelete",
          text = "-",
          numhl = "GitSignsDeleteNr",
          linehl = "GitSignsDeleteLn",
        },
        changedelete = {
          hl = "GitSignsChange",
          text = "~",
          numhl = "GitSignsChangeNr",
          linehl = "GitSignsChangeLn",
        },
      },
      signcolumn = true,
      numhl = false,
      linehl = false,
      word_diff = false,
      max_file_length = 5000,
      on_attach = function()
        local gs = package.loaded.gitsigns
        local wk = require("which-key")

        -- Navigation
        nnoremap("]h", function()
          if vim.wo.diff then
            return "]c"
          end
          vim.schedule(function()
            gs.next_hunk()
          end)
          return "<Ignore>"
        end, { expr = true })

        nnoremap("[h", function()
          if vim.wo.diff then
            return "[c"
          end
          vim.schedule(function()
            gs.prev_hunk()
          end)
          return "<Ignore>"
        end, { expr = true })

        wk.register({
          g = {
            p = { gs.preview_hunk, "preview hunk" },
            r = { gs.reset_hunk, "reset hunk" },
            d = { gs.toggle_deleted, "toggle view deleted" },
          }
        }, { prefix = "<leader>" })
        -- Actions
        -- nnoremap("<leader>hs", gs.stage_hunk)
        -- nnoremap("<leader>hu", gs.reset_hunk)
        -- nnoremap("<leader>hU", gs.undo_stage_hunk)
        -- nnoremap("<leader>gp", gs.preview_hunk)
        -- nnoremap("<leader>td", gs.toggle_deleted)
        -- nnoremap("<leader>hR", gs.reset_buffer)
        -- nnoremap("<leader>hd", gs.diffthis)
        -- nnoremap("<leader>gw", gs.stage_buffer)
        -- nnoremap("<leader>gr", gs.reset_buffer)
        -- nnoremap("<leader>gR", gs.reset_buffer_index)
      end,
      preview_config = {
        border = "rounded",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
      },
    })
  end,
}
