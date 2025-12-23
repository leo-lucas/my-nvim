return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  run = ':TSUpdate',
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 'javascript', 'typescript', 'tsx'},
      highlight = {
        enable = true,
      },
      fold = {
        enable = true,
        disable = {},
      },
    })
  end
}
