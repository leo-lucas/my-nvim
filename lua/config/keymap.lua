local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<C-o>', builtin.commands, { noremap = true, silent = true })
vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true, silent = true })
vim.keymap.set('n', '<C-g>', builtin.git_files, { noremap = true, silent = true })
vim.keymap.set('n', '<C-[>', ':Neotree<CR>', { noremap = true, silent = true })

