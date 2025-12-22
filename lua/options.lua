require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- aditional config for folding with treesitter
-- vim.opt.foldmethod = "expr"
-- vim.opt.folddexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevel = 99

vim.opt.number = true
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
