if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

syntax on
colors elflord
set rnu " Set relative lin numbering
set tabstop=2
set autoindent
set colorcolumn=80
set backspace=indent,eol,start
set ruler
set nohlsearch

inoremap jj <ESC> 
