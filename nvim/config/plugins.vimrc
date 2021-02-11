" =============================================================================
" PLUGINS
" =============================================================================
"" :PlugInstall, :PlugUpdate, :PlugClean, :PlugStatus, :PlugUpgrade
call plug#begin()
	" general
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete and snippets for EVERYTHING
	Plug 'junegunn/goyo.vim' " vim for writing
	Plug 'mhinz/vim-startify' " vim start page
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" utils
	Plug 'liuchengxu/vim-which-key' "to make using leader key easier
	Plug 'jiangmiao/auto-pairs' " matching braces
	Plug 'rhysd/clever-f.vim' "better f,F,t,T
	Plug 'ap/vim-css-color' "colored text on colors

	" markdown
	Plug 'plasticboy/vim-markdown'

	" latex
	Plug 'lervag/vimtex' " autocomplete

	" colorschemes
	Plug 'KeitaNakamura/neodark.vim'
	Plug 'arcticicestudio/nord-vim'
call plug#end()


" =============================================================================
" vim-markdown
" =============================================================================
let g:vim_markdown_new_list_item_indent = 0


" =============================================================================
" coc-prettier
" =============================================================================
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" =============================================================================
" vim-latex
" =============================================================================
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
let g:livepreview_previewer = 'open -a Preview'
let g:tex_conceal="abdmg"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"


