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
set linebreak
set clipboard+=unnamedplus
set mouse=a
set confirm
set termguicolors
set cursorline
set timeoutlen=50
set colorcolumn=80
set nowrap
set conceallevel=2
set list lcs=tab:\|\ "lines for tabs
set number
