let $VIMHOME=$HOME."/.vim.d"

set nocompatible
set encoding=utf-8 nobomb
set noautochdir
set expandtab shiftwidth=2 tabstop=2
"set nu

set gfn=monospace
set gfw=monospace
set sh=/bin/bash

syntax on

imap <c-space> <c-n>

set runtimepath=~/.vim.d,/usr/share/vim/vim73,~/.vim.d/syntax
"if has ("gui_running")
"  colorscheme torte
"en

set cursorline
highlight CursorLine guibg=#FFCFFF
set numberwidth=4

if exists ('+colorcolumn')
  set colorcolumn=81
else
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%>80v.\+/
endif

autocmd BufNewFile * silent! 0r ~/.vim.d/templates/%:e.tpl
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>

set hls

au BufWinLeave * silent mkview
au BufWinEnter * silent loadview

command SetGLSLFileType call SetGLSLFileType()
function SetGLSLFileType()
  for item in getline(1,10)
    if item =~ "#version 400"
      execute ':set filetype=glsl400'
      break
    endif
    if item =~ "#version 330"
      execute ':set filetype=glsl330'
      break
    endif
  endfor
endfunction
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl execute ':set filetype=glsl330'

au BufNewFile,BufRead *.tpp execute ':set filetype=cpp'
