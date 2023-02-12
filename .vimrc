set ruler
set bs=indent,eol,start
set number

set ts=4
set sw=4
set sts=0
set expandtab

set nowrap
set modeline
set cursorline
set mouse=a

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"syntax highlight on
syntax on

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vhda/verilog_systemverilog.vim'
"... add plugin whatever you need...

call vundle#end()
filetype plugin indent on

"Syntax folding
let g:verilog_syntax_fold_lst = "all"
set foldmethod=syntax
