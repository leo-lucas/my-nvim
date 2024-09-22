local function config()
	require 'plugins.lsp.lua-ls'

	vim.diagnostic.config {
		underline        = false,
		virtual_text     = false,
		signs            = true,
		update_in_insert = true,
		severity_sort    = true,
		float            = {
			border = 'rounded',
			source = 'always',
			header = '',
			prefix = '',
		}
	}

	require("mason").setup()
	require("mason-lspconfig").setup {
		ensure_installed = { "lua_ls", "eslint", "tsp_server" },
	}
	vim.opt.tabstop = 2
	vim.opt.shiftwidth = 2
	vim.opt.smartindent = true -- Habilita indentação inteligente baseada no código
	vim.opt.autoindent = true
end

return {
	{
		'neovim/nvim-lspconfig',
		config = config,
		opt = { inlay_hints = { enabled = true } },
	},
	-- Lua Deps
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	-- js/ts
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},
	{ 'jose-elias-alvarez/null-ls.nvim' }
}
