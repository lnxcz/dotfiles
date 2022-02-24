set updatetime=300
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <leader>rn <Plug>(coc-rename)




nmap <leader>f  <Plug>(coc-fix-current)



nnoremap <a-Up> :m-2<CR>
nnoremap <a-Down> :m+<CR>
inoremap <a-Up> <Esc>:m-2<CR>
inoremap <a-Down> <Esc>:m+<CR>


" https://github.com/neoclide/coc.nvim#example-vim-configuration
inoremap <silent><expr> <c-space> coc#refresh()

" gd - go to definition of word under cursor
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" gi - go to implementation
nmap <silent> gi <Plug>(coc-implementation)

" gr - find references
nmap <silent> gr <Plug>(coc-references)

" gh - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')


hi! CocErrorSign guifg=#d1666a
hi! CocInfoSign guibg=#353b45
hi! CocWarningSign guifg=#d1cd66
hi! CocHintSign guifg=#80ecff



nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>

" List errors
nnoremap <silent> <leader>l  :<C-u>CocList diagnostics<cr>

" list commands available in tsserver (and others)
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>

" restart when tsserver gets wonky
nnoremap <silent> <leader>R  :<C-u>CocRestart<CR>

command! -nargs=0 Format :call CocActionAsync('format')


nnoremap <silent> <leader>f  :<C-u>Format<cr>
" manage extensions
nnoremap <silent> <leader>x  :<C-u>CocList extensions<cr>

" rename the current word in the cursor
nmap <leader>r  <Plug>(coc-rename)
nmap <leader>z  <Plug>(coc-format-selected)
vmap <leader>z  <Plug>(coc-format-selected)

" run code actions
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)


