local lspconfig = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }


lspconfig.tsserver.setup {
  capabilities = capabilities,  -- Integração com nvim-cmp
  on_attach = function(client, bufnr)
    -- Desativar a formatação do tsserver se você for usar outro formatador, como prettier
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  filetypes = filetypes,
  cmd = { "typescript-language-server", "--stdio" }
}


local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
 --   null_ls.builtins.formatting.eslint.with(filetypes)
      null_ls.builtins.code_actions.eslint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})


lspconfig.eslint.setup({
  --- ...
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})
