-- Autocmd to set file format to unix
-- Attach the autocmd to the BufEnter,BufCreate event
vim.cmd([[
  augroup UnixFileFormat
    autocmd!
    autocmd BufEnter,BufCreate * lua if vim.bo.modifiable then vim.bo.fileformat = "unix" end
  augroup END
]])
