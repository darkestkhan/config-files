let $VIMHOME=$HOME."/.vim.d"

set nocompatible
set encoding=utf-8 nobomb
set noautochdir
set expandtab shiftwidth=2 tabstop=2
"set nu

set gfn=monospace
set gfw=monospace
set sh=/bin/bash

set guioptions-=T " remove toolbar
set guioptions-=r " remove right-hand scroll bar

syntax on

imap <c-space> <c-n>

set runtimepath=~/.vim.d,/usr/share/vim/vim74,~/.vim.d/syntax
if has ("gui_running")
  colorscheme elflord
"  set cursorline
"  highlight CursorLine guibg=#003F3F
en

set numberwidth=4

command ColorColumn80 call ColorCol80 ()
command ColorColumn72 call ColorCol72 ()
function ColorCol80 ()
  if exists ('+colorcolumn')
    set colorcolumn=81
  else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%>80v.\+/
  endif
endfunction

function ColorCol72 ()
  if exists ('+colorcolumn')
    set colorcolumn=73
  else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%>72v.\+/
  endif
endfunction

autocmd BufNewFile * silent! 0r ~/.vim.d/templates/%:e.tpl
autocmd BufNewFile make.sh silent! 0r ~/.vim.d/templates/make.sh.tpl

autocmd BufWinEnter * ColorColumn80

nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>

set hls

au BufNewFile,BufRead *.frag,*.vert,*.glsl execute ':set filetype=glsl330'
au BufNewFile,BufRead *.fp,*.vp execute ':set filetype=glsl330'

au BufNewFile,BufRead *.tpp execute ':set filetype=cpp'
