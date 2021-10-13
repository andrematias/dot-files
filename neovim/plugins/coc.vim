" COC Plugin settings
let g:coc_global_extensions = [
\ 'coc-css',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-eslint',
\ 'coc-tslint-plugin',
\ 'coc-vimlsp',
\ 'coc-emmet',
\ 'coc-diagnostic',
\ 'coc-python',
\ 'coc-jedi',
\]

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <silent> <leader>k :CocCommand explorer<cr>

"remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh <Plug>(coc-doHover)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

"tab completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction
