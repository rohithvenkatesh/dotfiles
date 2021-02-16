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
nnoremap <BS> <C-^>
nnoremap gb :ls<CR>:buffer<Space>
" leader
nmap <silent> <leader><ENTER> :Goyo<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gf <Plug>(coc-format)
nmap <leader>c :Codi<CR>
nmap <leader>e :CocCommand explorer<CR>
nnoremap <leader>p :CtrlPMixed<CR>
nmap <Leader>b1 <Plug>lightline#bufferline#go(1)
nmap <Leader>b2 <Plug>lightline#bufferline#go(2)
nmap <Leader>b3 <Plug>lightline#bufferline#go(3)
nmap <Leader>b4 <Plug>lightline#bufferline#go(4)
nmap <Leader>b5 <Plug>lightline#bufferline#go(5)
nmap <Leader>b6 <Plug>lightline#bufferline#go(6)
nmap <Leader>b7 <Plug>lightline#bufferline#go(7)
nmap <Leader>b8 <Plug>lightline#bufferline#go(8)
nmap <Leader>b9 <Plug>lightline#bufferline#go(9)
nmap <Leader>b0 <Plug>lightline#bufferline#go(10)

" =============================================================================
" REMAPS
" =============================================================================

nnoremap <silent> <CR> :noh<CR><CR>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" better window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" better inline navigation
noremap j gj
noremap k gk
noremap 0 ^
noremap ^ 0

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
