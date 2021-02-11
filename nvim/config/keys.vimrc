" =============================================================================
" LEADERSTUFF
" =============================================================================
nnoremap <Space> <Nop>
let mapleader=" "
let maplocalleader=" "
noremap <silent> <leader> :silent WhichKey '<Space>'<CR>
noremap <silent> <localleader> :silent WhichKey '<Space>'<CR>

" =============================================================================
" KEYBINDINGS
" =============================================================================
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <silent> <leader><ENTER> :Goyo<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gf <Plug>(coc-format)

" =============================================================================
" REMAPS
" =============================================================================
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
noremap j gj
noremap k gk
noremap 0 ^
noremap ^ 0
vnoremap < <gv
vnoremap > >gv
nnoremap <silent> <CR> :noh<CR><CR>

