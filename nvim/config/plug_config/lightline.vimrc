" =============================================================================
" vim-lightline
" =============================================================================
let g:lightline                  = {'colorscheme': 'nord'}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#number_separator = ': '
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#icon_position = 'right'
let g:lightline#bufferline#min_buffer_count = 1
