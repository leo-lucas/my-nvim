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
	

end
return {
    {
        'neovim/nvim-lspconfig',
        config = config,
        opt = { inlay_hints = { enabled = true } },
    },
    -- Lua Deps
    {'williamboman/mason.nvim' },
    {'williamboman/mason-lspconfig.nvim'},
}
