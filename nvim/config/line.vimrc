" =============================================================================
"STATUSLINE
" =============================================================================
set laststatus=2
"" left side
set statusline= 
set statusline+=%#ModeMsg# " color
set statusline+=\%y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=\ %M
"" right side
set statusline+=%=
set statusline+=\%l/%L
set statusline+=\:%c
set statusline+=\ %p%%
