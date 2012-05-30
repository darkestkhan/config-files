set nocompatible
set encoding=utf-8 nobomb
set noautochdir
set expandtab shiftwidth=2 tabstop=2
set nu

set gfn=monospace
set gfw=monospace
set sh=/bin/bash

syntax on

imap <c-space> <c-n>

set runtimepath=~/.vim.d,/usr/share/vim/vim73
if has ("gui_running")
  colorscheme torte
en

set cursorline
highlight CursorLine guibg=#003000

autocmd BufNewFile * silent! 0r ~/.vim.d/templates/%:e.tpl
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
