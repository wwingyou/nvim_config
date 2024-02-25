local opt = vim.opt

opt.expandtab = true
opt.shiftwidth = 2
opt.shiftround = true
opt.tabstop = 2

opt.number = true
opt.clipboard = 'unnamedplus'

-- clipboard setting
vim.cmd('set clipboard+=unnamedplus')

-- other
vim.cmd('autocmd FileType java setlocal shiftwidth=4 tabstop=4')
