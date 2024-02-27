-- align file when writeing
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":normal gg=G"
})

-- nowrap on html file to reserve it's structure
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.html",
  command = "setlocal nowrap"
})

-- comment out the line
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "java", "javascript" },
  command = "nnoremap <buffer> <localleader>c I// <esc>"
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "ruby" },
  command = "nnoremap <buffer> <localleader>c I# <esc>"
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua" },
  command = "nnoremap <buffer> <localleader>c I-- <esc>"
})
