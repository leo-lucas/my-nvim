return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-jest",
  },
  lazy = false,
  config = function()
    require("neotest").setup({
      adapters = {
        neotest = {
          require("neotest-jest")({
            jestCommand = "npm test -- --coverage --silent",
            env = {
              CI = true,
            }
          })
        }
      }
    })
  end
}

