" Basic Settings
syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set bs=indent,eol,start
set nowrap
set modeline
set cursorline
set mouse=a
set ignorecase
set hlsearch
set cindent
set history=256
set showmatch
set hidden
set encoding=utf-8 "for airline power-font

"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"... add plugin whatever you need...
Plugin 'blueyed/vim-diminactive'        "vim-diminactive - for split working
Plugin 'preservim/nerdtree'             "nerdtree for file_tree
Plugin 'vim-airline/vim-airline'        "vim-airline
Plugin 'vim-airline/vim-airline-themes' "airline themes
Plugin 'tpope/vim-fugitive'             "help git usage in vim
Plugin 'scrooloose/syntastic'           "auto-syntax check when file store
Plugin 'SirVer/ultisnips'               "snippets - auto complete
Plugin 'honza/vim-snippets'             "|
Plugin 'garbas/vim-snipmate'            "|
Plugin 'tomtom/tlib_vim'                "|
Plugin 'MarcWeber/vim-addon-mw-utils'   "|  
Plugin 'ryanoasis/vim-devicons'         "nerd-fonts for vim-devicons
Plugin 'morhetz/gruvbox'                "gruvbox colorsheme

call vundle#end()
filetype plugin indent on

"Colorcheme
"colorscheme molokai
"let g:molokai_original = 1 " background color
set termguicolocrs
let g:gruvbox_contrast_dark="hard"
set background=dark
autocmd vimenter * colorscheme gruvbox

"verilog syntax
"autocmd BufNewFile,BufRead *.v,*sv set syntax=verilog

"for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline#extensions#tabline#fnamemode = ':t' " only print filename
let g:airline_powerline_fonts = 1
set laststatus=2 " turn on bottom bar

"The-NERD-Tree
let g:NERDTreeWinPos = "left"
"" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
"" short cut
noremap <C-F> :NERDTreeFind<CR>
noremap <F2> :NERDTreeToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"syntastics - auto syntax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"snippets
"" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
"" - https://github.com/Valloric/YouCompleteMe
"" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsEditSplit="vertical"
"let g:snipMate = { 'snippet_version' : 1 }
"let g:UltiSnipsSnippetDirectories = ['UltiSnips']
