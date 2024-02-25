local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup("plugins", {})

-- options
local opt = vim.opt

opt.expandtab = true
opt.shiftwidth = 2
opt.shiftround = true
opt.tabstop = 2

opt.number = true
opt.clipboard = 'unnamedplus'

-- user-commands
vim.cmd "com Config :tabe ~/.config/nvim/init.lua"

-- keymaps
vim.keymap.set('n', '<leader>w', '<C-W>w', {})

-- clipboard setting
vim.cmd('set clipboard+=unnamedplus')

-- other
vim.cmd('autocmd FileType java setlocal shiftwidth=4 tabstop=4')
