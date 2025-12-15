vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx"},
  callback = function()
    vim.cmd("EslintFixAll")
  end
})
