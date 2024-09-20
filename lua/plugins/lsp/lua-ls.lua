
require("lspconfig").lua_ls.setup {
settings = {
        Lua = {
            runtime = {
                -- Indique que o Neovim usa LuaJIT.
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
		
            },
            diagnostics = {
                -- Reconhecer a variável `vim` global do Neovim.
                globals = { 'vim' }
            },
            workspace = {
                -- Tornar o servidor ciente dos arquivos runtime do Neovim
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false, -- Desativa notificações de pacotes de terceiros
            },
            telemetry = {
                enable = false, -- Desativa o envio de dados de telemetria.
            },
        },
    },

}


