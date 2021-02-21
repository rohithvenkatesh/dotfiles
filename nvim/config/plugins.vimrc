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
	Plug 'ctrlpvim/ctrlp.vim' "fuzzy file searching
	Plug 'itchyny/lightline.vim' "statusline
	Plug 'mengelbrecht/lightline-bufferline' "show buffers lightline

	" utils
	Plug 'liuchengxu/vim-which-key' "to make using leader key easier
	Plug 'jiangmiao/auto-pairs' " matching braces
	Plug 'rhysd/clever-f.vim' "better f,F,t,T
	Plug 'ap/vim-css-color' "colored text on colors
	Plug 'ryanoasis/vim-devicons' "icons in vim

	" markdown
	Plug 'plasticboy/vim-markdown'

	" latex
	Plug 'lervag/vimtex' " autocomplete

	" colorschemes
	Plug 'KeitaNakamura/neodark.vim'
	Plug 'arcticicestudio/nord-vim'
call plug#end()

" =============================================================================
" smaller plugin configs
" =============================================================================
let g:vim_markdown_new_list_item_indent = 0 "vim-markdown
command! -nargs=0 Prettier :CocCommand prettier.formatFile "coc-prettier
"ctrlp
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif
