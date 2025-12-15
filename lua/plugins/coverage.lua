return {
	"andythigpen/nvim-coverage",
  lazy = false,
	version = "*",
	config = function()
		require("coverage").setup({
			auto_reload = true,
		})
	end,
}
