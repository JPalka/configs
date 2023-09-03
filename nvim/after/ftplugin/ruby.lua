function _G.load_rails_projections()
  if vim.fn.exists("g:rails_projections") then
    -- TODO: prolly replace with vim.g["projectionist_heuristics"]
  --   vim.g["rails_projections"] = vim.fn["projections#load_projections"]("rails")
  --   vim.cmd([[
		-- 	autocmd User ProjectionistActivate :call projections#set_projections('rails')
		-- ]])
  end
end

vim.cmd([[autocmd User Rails :lua load_rails_projections()]])
