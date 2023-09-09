local util = require("util")

--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap jk as <esc>
util.inoremap("jk", "<esc>")

--Remap for dealing with word wrap
util.nnoremap("k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
util.nnoremap("j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

util.nnoremap("<leader>w", ":w<CR>")
util.nnoremap("<leader>q", ":q<CR>")
util.nnoremap("<C-c>", ":Bdelete<CR>")
util.nnoremap("<C-e>", ":e<CR>")
util.nnoremap("<space><space>", "<C-^>")

-- convenience mappings
util.nnoremap("H", "^")
util.nnoremap("L", "$")

util.nnoremap("Q", "<NOP>")

-- shell like jump mappings
util.inoremap("<C-e>", "<END>")
util.inoremap("<C-a>", "<C-o>^")
util.inoremap("<C-b>", "<LEFT>")
util.inoremap("<C-f>", "<RIGHT>")

-- quickfix
util.nmap("]q", ":cnext<CR>")
util.nmap("[q", ":cprev<CR>")
util.nmap("]Q", ":clast<CR>")
util.nmap("[Q", ":cfirst<CR>")

util.nmap("<leader>i", ":IndentBlanklineToggle<CR>")

-- copy to system clipboard
util.nmap("<Leader>y", '"+y')

util.nmap("<leader>rc", ":Rails log:clear <bar> Rails tmp:clear <bar> Rails assets:clean<CR>")

util.nnoremap("<leader>bp", "obinding.pry<ESC>", { buffer = true })
util.nnoremap("<leader>br", ":g/binding.pry/d<CR>", { buffer = true })

vim.keymap.set("n", "<M-q>", function()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_is_valid(win) then
			local config = vim.api.nvim_win_get_config(win)

			if config.relative ~= "" then
				vim.api.nvim_win_close(win, false)
			end
		end
	end
end)

vim.cmd([[
  cnoremap <C-a> <Home>
  cnoremap <C-e> <END>
]])

-- fugitive mappings
util.nnoremap("g<space>", ":G<CR>")
util.nnoremap("<leader>gl", ":Git log<CR>")
util.nnoremap("<leader>gL", ":0Gclog -n1000<CR>")

-- luasnip mappings
-- Remapped with karabiner-elements, <C-S-[ljk]>
util.noremap({ "i", "v" }, "<F2>1", function()
  if luasnip.choice_active() then
    luasnip.change_choice(1)
  elseif luasnip.expand_or_locally_jumpable() then
    luasnip.expand_or_jump()
  else
    util.info("No snippet under cursor")
  end
end)

util.noremap({ "i", "v" }, "<F2>2", function()
  if luasnip.jumpable(1) then
    luasnip.jump(1)
  else
    util.info("Snippet: can't jump forward")
  end
end)

util.noremap({ "i", "v" }, "<F2>3", function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  else
    util.info("Snippet: can't jump back")
  end
end)

-- nvim surround keymaps TODO: see what they actually do
vim.keymap.set("o", "ir", "i[")
vim.keymap.set("o", "ar", "a[")
vim.keymap.set("o", "ia", "i<")
vim.keymap.set("o", "aa", "a<")

-- telescope bindings
util.nnoremap("<leader>fp", function()
    require("telescope.builtin").find_files({
      cwd = require("lazy.core.config").options.root
    })
  end
)
util.nnoremap("<C-p>", function()
    require("telescope.builtin").find_files()
  end
)
util.nnoremap("<C-\\>", function()
    require("telescope.builtin").live_grep()
  end
)
util.nnoremap("<C-b>", function()
    require("telescope.builtin").git_branches({
      attach_mappings = function(_, map)
        map("i", "<c-d>", require("telescope.actions").git_delete_branch)
        return true
      end,
    })
  end
)
util.nnoremap("<leader>\\", function()
    require("telescope.builtin").grep_string({ default_text = vim.fn.expand("<cword>") })
  end
)
util.vnoremap("<leader>\\", function()
    require("telescope.builtin").grep_string({ default_text = get_visual_selection() })
  end
)

-- tmux.nvim bindings
util.nnoremap("<C-h>", function() require("tmux").move_left() end)
util.nnoremap("<C-l>", function() require("tmux").move_right() end)
util.nnoremap("<C-j>", function() require("tmux").move_top() end)
util.nnoremap("<C-k>", function() require("tmux").move_bottom() end)

-- tmux runner bindings
util.nnoremap("<leader>ro", ":VtrOpenRunner<cr>")
util.nnoremap("<leader>ra", ":VtrAttachToPane<cr>")
util.noremap({ "n", "v" }, "<leader>rs", ":VtrSendLinesToRunner<cr>")

-- nvim.tree bindings
util.nnoremap("<leader>t", ":NvimTreeToggle<cr>")
util.nnoremap("<leader>f", ":NvimTreeFindFileToggle<cr>")

-- vim-test bindings
util.nnoremap("<leader>rr", ":TestNearest<cr>")
util.nnoremap("<leader>R", ":TestFile<cr>")
util.nnoremap("<leader>rf", ":TestSuite<cr>")
util.nnoremap("<Leader>rl", ":TestLast<CR>")

util.nnoremap("<Leader>ar", ":! bundle exec rubocop -A %<CR>")
