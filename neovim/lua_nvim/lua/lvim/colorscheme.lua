vim.g.gruvbox_contrast_dark="hard"
vim.g.gruvbox_hls_cursor="orange"
vim.g.gruvbox_italic=1
vim.g.gruvbox_transparent_bg=1
vim.g.gruvbox_underline=0
vim.g.gruvbox_number_column="bg1"

vim.cmd [[ 
try
  set background=dark
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

