-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Definir <leader> como la barra espaciadora
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General
vim.opt.number = true
vim.opt.relativenumer = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.showmode = false

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
