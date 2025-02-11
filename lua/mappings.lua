require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({"n", "v"}, "<C-.>", ":CopilotChat<cr>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- map react extract
map({ "v" }, "<Leader>re", require("react-extract").extract_to_new_file)
map({ "v" }, "<Leader>rc", require("react-extract").extract_to_current_file)

-- Copilot chat
map(
  { "n", "v" },
  "<leader>ccq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
  end,
  { desc = "CopilotChat - Quick chat" }
)
map(
  { "n", "v" },
  "<leader>ccp",
  function()
    local actions = require("CopilotChat.actions")
    require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
  end,
  { desc = "CopilotChat - Prompt actions" }
)

-- Tests
map(
  { "n" },
  "<leader>ti",
  function()
    require("neotest").run.run()
  end,
  { desc = "Run current test" }
)
map(
  { "n" },
  "<leader>tf",
  function()
    require("neotest").run.run(vim.fn.expand("%"))
  end,
  { desc = "Run file test" }
)
map(
  { "n" },
  "<leader>to",
  function()
    require("neotest").output.open()
  end,
  { desc = "Test open output" }
)
