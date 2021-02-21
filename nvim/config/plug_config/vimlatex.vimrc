" =============================================================================
" vim-latex
" =============================================================================
let g:livepreview_previewer = 'open -a Skim'
let g:vimtex_view_method = 'skim'
let g:vimtex_fold_enabled = 1
let g:polyglot_disabled = ['latex']
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

