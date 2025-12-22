return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		lazy = false,
    dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
	  config = function ()
	   require("CopilotChat").setup({})
	  end
  },
}

