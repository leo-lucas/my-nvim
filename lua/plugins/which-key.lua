local function config()
	local telescope = require 'telescope'
	local wk = require 'which-key'
	local builtin = require 'telescope.builtin'
	local conf = {
        	preset = 'modern',
        	presets = {
        		operators = true,
        		motions = false,
        		text_objects = true,
        		windows = true,
        		nav = false,
        		z = true,
        		g = false
        	},
        	delay = 1000,
	} 
	
	wk.setup(conf)

	wk.add({
	-- normal mode
        {
            { "<leader>f",  group = "fzf/telescope+" },
            { "<leader>ff", builtin.find_files,                                              desc = 'Find files' },
            { "<leader>fr", builtin.oldfiles,                                                desc = "Open recent file" },
            { "<leader>fn", "<cmd>enew<cr>",                                                 desc = "New file" },
            { "<leader>fl", builtin.live_grep,                                               desc = "Live grep" },
            { "<leader>fb", builtin.buffers,                                                 desc = "Buffers" },
            { "<leader>fh", builtin.help_tags,                                               desc = "Help tags" },
            { "<leader>fk", builtin.keymaps,                                                 desc = "Oh Yeah, the awesome Keymaps!" },
            { "<leader>fg", builtin.git_files,                                               desc = "Git files" },
            { "<leader>fd", builtin.diagnostics,                                             desc = "Diagnostics" },
            { "<leader>fm", function() vim.cmd(":Noice telescope") end,                      desc = "Noice messages" },
            -- { "<leader>fs", function() builtin.grep_string({ search = vim.fn.input("Greg > ") }) end, desc = 'Search ...' },
            { "<leader>fs", function() vim.cmd(":Telescope live_grep use_regex=true") end,   desc = 'Search ...' },
            { "<leader>fg", function() vim.cmd(":Telescope grep_string use_regex=true") end, desc = 'Search ...' },
            { "<leader>fv", function() require 'neoclip.fzf' () end,                         desc = 'Clipboard history' },
            { "<leader>ft", vim.cmd.OverseerRun,                                             desc = 'Show tasks' },
            { "<leader>fo", vim.cmd.OverseerOpen,                                            desc = 'Show tasks output' },
            { "<leader>fq", builtin.quickfix,                                                desc = 'Quickfix' },
            { "<leader>fc", vim.cmd.Noice,                                                   desc = 'Noice console messages' },
            { "<leader>fw", ':Telescope lsp_dynamic_workspace_symbols<CR>',                  desc = 'Search Workspace types' },
        },
	

	})

  wk.add({
        { "<leader>c",  group = "code" },
        { "<leader>ca", desc = 'Code actions' },
        { "<leader>cf", desc = 'Code format' },
    })


end



return {{
  "folke/which-key.nvim",
  config = config
} }
