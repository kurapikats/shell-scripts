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
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set colorcolumn=80
set backspace=indent,eol,start
set ruler
set nohlsearch
set laststatus=2
set ignorecase smartcase

inoremap jj <ESC> 
execute pathogen#infect()
filetype plugin indent on

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim

" for javascript-libraries-syntax
" let g:used_javascript_libs = 'jquery,react'
" autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
" autocmd BufReadPre *.jsx let b:javascript_lib_use_react = 1

" for NERDTree, auto show tree when no file loaded
" map toogle
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-b> :NERDTreeToggle<CR>

let g:jsx_ext_required = 0
" let g:xml_syntax_folding = 1
