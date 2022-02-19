vim.cmd [[
  augroup tabs
    autocmd!
    autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType javascriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2
  augroup end
]]
