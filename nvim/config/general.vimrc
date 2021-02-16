" =============================================================================
" COLORSCHEME 
" =============================================================================
"let g:neodark#terminal_transparent = 1 " default: 0
colorscheme nord
highlight Comment cterm=italic gui=italic
highlight htmlItalic cterm=italic gui=italic
highlight htmlBold cterm=bold gui=bold
hi clear Conceal

" =============================================================================
" GENERALSETTINGS
" =============================================================================
filetype plugin indent on
set smartindent tabstop=2 shiftwidth=2 " indentation
set splitbelow splitright
set ignorecase smartcase
set clipboard+=unnamedplus
set showtabline=2
set timeoutlen=50
set colorcolumn=80
set conceallevel=2
set list lcs=tab:\|\ "lines for tabs
set mouse=a
set noshowmode
set linebreak
set confirm
set termguicolors
set cursorline
set number
set hidden "for vim buffers
set incsearch
set nowrap
