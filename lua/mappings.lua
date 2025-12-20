require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "v" }, "<C-.>", ":CopilotChat<cr>")

-- Copilot chat
map({ "n", "v" }, "<leader>ccq", function()
	local input = vim.fn.input("Quick Chat: ")
	if input ~= "" then
		require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
	end
end, { desc = "CopilotChat - Quick chat" })
map({ "n", "v" }, "<leader>ccp", function()
	local actions = require("CopilotChat.actions")
	require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
end, { desc = "CopilotChat - Prompt actions" })

-- Tests
map({ "n" }, "<leader>ti", function()
	require("neotest").run.run()
end, { desc = "Run current test" })
map({ "n" }, "<leader>tf", function()
	require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Run file test" })

map({ "n" }, "<leader>ta", function()
	require("neotest").run.run(vim.fn.getcwd())
end, { desc = "Run all tests" })

map({ "n" }, "<leadeer>tS", function()
	require("neotest").run.stop()
end, { desc = "Stop running tests" })

map({ "n" }, "<leader>ts", function()
	require("neotest").summary.toggle()
end, { desc = "Toggle test summary" })

map({ "n" }, "<leader>twa", function()
	local neotest = require("neotest")
	local function watch_all_tests()
		local test_files = vim.fn.glob("src/**/*.spec,test].[ts,tsx]", false, true)
		for _, file in ipairs(test_files) do
			neotest.watch.toggle(file)
		end
	end
	watch_all_tests()
end, { desc = "Run all tests in watch mode" })
map({ "n" }, "<leader>tc", ":Coverage<CR>", { desc = "Coverage" })

map({ "n" }, "<leader>twf", function()
	require("neotest").watch.toggle(vim.fn.expand("%"))
end, { desc = "Toggle watch test" })

map({ "n" }, "<leader>to", function()
	require("neotest").output.open()
end, { desc = "Show output" })

-- Mapeamento teclas vim-visual-multi
map("n", "<C-d>", "<Plug>(VM-Find-Under)", { desc = "Visual Multi - Find Under" })
map("n", "<C-Down", "<Plug>(VM-Add-Cursor-Down)", { desc = "Visual Multi - Add Cursor Down" })
map("n", "<C-Up>", "<Plug>(VM-Add-Cursor-Up)", { desc = "Visual Multi - Add Cursor Up" })
