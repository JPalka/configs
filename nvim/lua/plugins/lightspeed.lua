-- stylua: ignore

return {
  "ggandor/lightspeed.nvim",
  keys = { "s", "S", "f", "F", "t", "T" },
  config = function()
		config = function()
			require("lightspeed").setup({
				repeat_ft_with_target_char = true,
			})
		end
  end
}
