function config()
	require'nvim-treesitter.configs'.setup {
  -- A list of pahttps://github.com/tree-sitter/tree-sitter-typescriptrser names, or "all" (the listed parsers MUST always be installed)
  	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "typescript", "javascript" },
  	}

end

return { 'nvim-treesitter/nvim-treesitter', config = config}
