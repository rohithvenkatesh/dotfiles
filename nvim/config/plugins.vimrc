" =============================================================================
" PLUGINS
" =============================================================================
"" :PlugInstall, :PlugUpdate, :PlugClean, :PlugStatus, :PlugUpgrade
call plug#begin()
	" general
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete and snippets for EVERYTHING
	Plug 'junegunn/goyo.vim' " vim for writing
	Plug 'mhinz/vim-startify' " vim start page
	Plug 'SirVer/ultisnips' "snippets

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
" ultisnips
" =============================================================================
let g:UltiSnipsSnippetDirectories=["custom_snippets"]
let g:UltiSnipsExpandTrigger="<space>"
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" =============================================================================
" vim-latex
" =============================================================================
let g:livepreview_previewer = 'open -a Preview'
let g:tex_conceal="abdmg"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" Navigate snippet placeholders using tab
"let g:coc_snippet_next = '<Tab>'
"let g:coc_snippet_prev = '<S-Tab>'

