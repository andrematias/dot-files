" NERDTree settings
function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    exe ":NERDTreeToggle"
  endif
endfunction
nmap <C-f> :call NERDTreeToggleInCurDir()<CR>

let NERDTreeIgnore=['\.swp$', '\.pyc$', '__pycache__', 'bin', 'obj']
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize=30
