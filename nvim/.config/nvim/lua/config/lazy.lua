local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        -- Carga todos los archivos .lua en la carpeta plugins/
        {
            import = "plugins"
        },
    },
    defaults = {
        lazy = false
    },
    checker = {
        enabled = false
    },
    performance = {
        rtp = {
        disabled_plugins = {
            "gzip", "tar", "tarPlugin", "zip", "zipPlugin", "tutor",
            "rplugin", "man", "matchit", "matchparen",
        },
        },
    },
    -- Maneja la sincronización en segundo plano
    install = {
        missing = true, -- Instala plugins faltantes al iniciar
    },
    ui = {
        border = "rounded", -- Estilo de la UI de Lazy
    }
})

-- Establece el tema
vim.cmd([[colorscheme catppuccin-mocha]])

-- Forzar números de línea
vim.opt.number = true
vim.opt.relativenumber = false

-- Forzar configuración de tabs
vim.cmd([[
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set softtabstop=4
]])
