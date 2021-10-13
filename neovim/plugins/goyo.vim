"Goyo
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set wrap
  set conceallevel=0
  set number
  set relativenumber
  PencilToggle
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  set nowrap
  set conceallevel=2
  set number
  set relativenumber
  PencilToggle
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
