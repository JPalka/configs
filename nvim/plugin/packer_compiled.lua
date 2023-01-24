-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jony/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jony/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jony/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jony/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jony/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { 'require("Comment").setup({})' },
    keys = { { "", "gc" }, { "", "gcc" }, { "", "gb" }, { "", "gbc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16config.snip\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["SchemaStore.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/SchemaStore.nvim",
    url = "https://github.com/b0o/SchemaStore.nvim"
  },
  ["bufdelete.nvim"] = {
    commands = { "Bdelete" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conflict-marker.vim"] = {
    config = { 'require("config.conflict-marker")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/conflict-marker.vim",
    url = "https://github.com/rhysd/conflict-marker.vim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = { 'require("diffview").setup({})' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dir-telescope.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/dir-telescope.nvim",
    url = "https://github.com/princejoogie/dir-telescope.nvim"
  },
  ["dressing.nvim"] = {
    commands = { "VimEnter" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("config.gitsigns")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\31repeat_ft_with_target_char\2\nsetup\15lightspeed\frequire\0" },
    keys = { { "", "s" }, { "", "S" }, { "", "f" }, { "", "F" }, { "", "t" }, { "", "T" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { 'require("config.lsp-saga")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('config.lualine')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("config.autopairs")' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "cmp-buffer", "cmp-nvim-lsp", "cmp-nvim-lua", "cmp-path", "cmp_luasnip", "nvim-autopairs" },
    config = { "require('config.cmp')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp",
    wants = { "LuaSnip" }
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nk\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\25user_default_options\1\0\0\1\0\1\rtailwind\blsp\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("config.lsp")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig",
    wants = { "cmp-nvim-lsp", "null-ls.nvim", "lua-dev.nvim", "SchemaStore.nvim" }
  },
  ["nvim-notify"] = {
    config = { 'vim.notify = require("notify")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-surround"] = {
    config = { 'require("config.surround")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("config.tree")' },
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects", "nvim-treesitter-endwise", "nvim-ts-rainbow", "nvim-ts-autotag" },
    config = { "require('config.treesitter')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["splitjoin.vim"] = {
    keys = { { "", "gJ" }, { "", "gS" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/startuptime.vim",
    url = "https://github.com/tweekmonster/startuptime.vim"
  },
  ["substitute.nvim"] = {
    config = { 'require("config.substitute")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/substitute.nvim",
    url = "https://github.com/gbprod/substitute.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "require('config.telescope')" },
    keys = { { "", "<C-p>" }, { "", "<C-q>" }, { "", "<C-y>" }, { "", "\\" }, { "", "<C-g>" }, { "", "<C-x>" }, { "", "<C-b>" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim",
    wants = { "trouble.nvim" }
  },
  ["tmux.nvim"] = {
    config = { "require('config.tmux')" },
    keys = { { "", "<C-j>" }, { "", "<C-k>" }, { "", "<C-h>" }, { "", "<C-l>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/tmux.nvim",
    url = "https://github.com/aserowy/tmux.nvim"
  },
  ["todo-comments.nvim"] = {
    commands = { "TodoTelescope" },
    config = { 'require("todo-comments").setup({})' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tpope-vim-abolish"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/tpope-vim-abolish",
    url = "https://github.com/tpope/tpope-vim-abolish"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle", "Trouble" },
    config = { 'require("config.trouble")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-argwrap"] = {
    config = { "\27LJ\2\nU\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0'\3\4\0B\0\3\1K\0\1\0\17:ArgWrap<CR>\15<leader>jj\rnnoremap\tutil\frequire\0" },
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-argwrap",
    url = "https://github.com/FooSoft/vim-argwrap"
  },
  ["vim-bundler"] = {
    commands = { "Bopen" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-distinguished"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-distinguished",
    url = "https://github.com/Lokaltog/vim-distinguished"
  },
  ["vim-eunuch"] = {
    commands = { "Delete", "Move", "Rename", "Remove" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    config = { "require('config.fugitive')" },
    keys = { { "", "g<space>" }, { "", "<leader>gl" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\nµ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\23filetypes_denylist\1\3\0\0\fdirvish\rfugitive\14providers\1\0\2\17under_cursor\1\ndelay\3È\1\1\4\0\0\blsp\15treesitter\nregex\14configure\15illuminate\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-operator-surround"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-operator-surround",
    url = "https://github.com/rhysd/vim-operator-surround"
  },
  ["vim-operator-user"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-operator-user",
    url = "https://github.com/kana/vim-operator-user"
  },
  ["vim-projectionist"] = {
    after = { "vim-rails" },
    config = { 'require("config.projectionist")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-rails"] = {
    load_after = {
      ["vim-projectionist"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-test"] = {
    commands = { "TestNearest", "TestFile", "TestSuite", "TestLast" },
    config = { 'require("config.test")' },
    keys = { { "", "<leader>rr" }, { "", "<leader>R" }, { "", "<Leader>rf" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test",
    wants = { "vim-tmux-runner" }
  },
  ["vim-textobj-anyblock"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-anyblock",
    url = "https://github.com/rhysd/vim-textobj-anyblock"
  },
  ["vim-textobj-argument"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-argument",
    url = "https://github.com/gaving/vim-textobj-argument"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-line"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-line",
    url = "https://github.com/kana/vim-textobj-line"
  },
  ["vim-textobj-quotes"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-quotes",
    url = "https://github.com/beloglazov/vim-textobj-quotes"
  },
  ["vim-textobj-ruby"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-ruby",
    url = "https://github.com/rhysd/vim-textobj-ruby"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-tmux-runner"] = {
    commands = { "VtrSendLinesToRunner", "VtrSendFile", "VtrSendCommand", "VtrAtachtoPane" },
    config = { 'require("config.vtr")' },
    keys = { { "", "<c-f>" }, { "", "<leader>ve" }, { "", "<leader>vd" }, { "", "<leader>vv" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jony/.local/share/nvim/site/pack/packer/opt/vim-tmux-runner",
    url = "https://github.com/christoomey/vim-tmux-runner"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/jony/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^diffview"] = "diffview.nvim",
  ["^illuminate"] = "vim-illuminate",
  ["^nvim%-autopairs"] = "nvim-autopairs",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^telescope"] = "telescope.nvim",
  ["^ts_context_commentstring"] = "nvim-ts-context-commentstring"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("config.tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-argwrap
time([[Config for vim-argwrap]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0'\3\4\0B\0\3\1K\0\1\0\17:ArgWrap<CR>\15<leader>jj\rnnoremap\tutil\frequire\0", "config", "vim-argwrap")
time([[Config for vim-argwrap]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'VimEnter', function(cmdargs)
          require('packer.load')({'dressing.nvim'}, { cmd = 'VimEnter', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dressing.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('VimEnter ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'StartupTime', function(cmdargs)
          require('packer.load')({'startuptime.vim'}, { cmd = 'StartupTime', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'startuptime.vim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('StartupTime ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'G', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'G', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('G ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Git', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'Git', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Git ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bopen', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bopen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bopen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bdelete', function(cmdargs)
          require('packer.load')({'bufdelete.nvim'}, { cmd = 'Bdelete', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'bufdelete.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bdelete ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewClose', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewToggleFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewToggleFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewToggleFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFocusFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFocusFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFocusFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Delete', function(cmdargs)
          require('packer.load')({'vim-eunuch'}, { cmd = 'Delete', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-eunuch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Delete ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Move', function(cmdargs)
          require('packer.load')({'vim-eunuch'}, { cmd = 'Move', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-eunuch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Move ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Rename', function(cmdargs)
          require('packer.load')({'vim-eunuch'}, { cmd = 'Rename', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-eunuch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Rename ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Remove', function(cmdargs)
          require('packer.load')({'vim-eunuch'}, { cmd = 'Remove', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-eunuch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Remove ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestLast', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestLast', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TestLast ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TodoTelescope', function(cmdargs)
          require('packer.load')({'todo-comments.nvim'}, { cmd = 'TodoTelescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'todo-comments.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TodoTelescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestNearest', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestNearest', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TestNearest ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'VtrSendLinesToRunner', function(cmdargs)
          require('packer.load')({'vim-tmux-runner'}, { cmd = 'VtrSendLinesToRunner', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-runner'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('VtrSendLinesToRunner ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'VtrSendFile', function(cmdargs)
          require('packer.load')({'vim-tmux-runner'}, { cmd = 'VtrSendFile', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-runner'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('VtrSendFile ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'VtrSendCommand', function(cmdargs)
          require('packer.load')({'vim-tmux-runner'}, { cmd = 'VtrSendCommand', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-runner'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('VtrSendCommand ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'VtrAtachtoPane', function(cmdargs)
          require('packer.load')({'vim-tmux-runner'}, { cmd = 'VtrAtachtoPane', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-runner'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('VtrAtachtoPane ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestSuite', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestSuite', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TestSuite ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleToggle', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Trouble', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Trouble ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestFile', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestFile', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TestFile ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <leader>gl <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>gl", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> f <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> s <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> T <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-j> <cmd>lua require("packer.load")({'tmux.nvim'}, { keys = "<lt>C-j>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> g<space> <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "g<lt>space>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>rr <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>rr", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-y> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-y>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gbc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gbc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>vv <cmd>lua require("packer.load")({'vim-tmux-runner'}, { keys = "<lt>leader>vv", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> S <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-l> <cmd>lua require("packer.load")({'tmux.nvim'}, { keys = "<lt>C-l>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-p> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-p>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> F <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-x> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-x>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <c-f> <cmd>lua require("packer.load")({'vim-tmux-runner'}, { keys = "<lt>c-f>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>ve <cmd>lua require("packer.load")({'vim-tmux-runner'}, { keys = "<lt>leader>ve", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> \ <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "\\", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-b> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-b>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>R <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>R", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> t <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-g> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-g>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>vd <cmd>lua require("packer.load")({'vim-tmux-runner'}, { keys = "<lt>leader>vd", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-h> <cmd>lua require("packer.load")({'tmux.nvim'}, { keys = "<lt>C-h>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>rf <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>Leader>rf", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-k> <cmd>lua require("packer.load")({'tmux.nvim'}, { keys = "<lt>C-k>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-q> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-q>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-projectionist', 'lualine.nvim', 'nvim-notify', 'nvim-surround'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au UIEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "UIEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'vim-illuminate'}, { event = "CursorHold *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'conflict-marker.vim', 'todo-comments.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'indent-blankline.nvim', 'lspsaga.nvim', 'nvim-colorizer.lua', 'nvim-lspconfig', 'trouble.nvim', 'gitsigns.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'substitute.nvim'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
