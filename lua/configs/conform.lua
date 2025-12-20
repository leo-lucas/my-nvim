local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { lsp_format="first",  "prettier" },
    typescript = { lsp_format="first", "prettier" },
    javascriptreact = { lsp_format="first", "prettier" },
    typescriptreact = { lsp_format="first", "prettier" },
    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
