vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*",
  callback = function(args)
    require("conform").format({
      bufnr = args.buf,
    })
  end,
})
