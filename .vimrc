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
set encoding=utf-8  "for airline power-font
set t_RV=           "for trash-characters & airline top tabline bug fix

"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"... add plugin whatever you need...
Plugin 'blueyed/vim-diminactive'           " vim-diminactive - for split working
Plugin 'preservim/nerdtree'                " nerdtree for file_tree
Plugin 'vim-airline/vim-airline'           " vim-airline
Plugin 'vim-airline/vim-airline-themes'    " airline themes
Plugin 'tpope/vim-fugitive'                " help git usage in vim
Plugin 'scrooloose/syntastic'              " auto-syntax check when file store
Plugin 'SirVer/ultisnips'                  " snippets - auto complete
Plugin 'honza/vim-snippets'                " |
Plugin 'garbas/vim-snipmate'               " |
Plugin 'tomtom/tlib_vim'                   " |
Plugin 'MarcWeber/vim-addon-mw-utils'      " |
Plugin 'ryanoasis/vim-devicons'            " nerd-fonts for vim-devicons
Plugin 'morhetz/gruvbox'                   " gruvbox colorsheme
Plugin 'michaeljsmith/vim-indent-object'   " select block that has same indent level
Plugin 'junegunn/vim-easy-align'           " vim easy align similar to tabulize
Plugin 'antoinemadec/vim-verilog-instance' " auto-instance maker for verilog
Plugin 'preservim/nerdcommenter'           " convinience comment

call vundle#end()
filetype plugin indent on

"Colorcheme
set t_Co=256
let g:gruvbox_contrast_dark="hard"
set background=dark
autocmd vimenter * colorscheme gruvbox

"vim-easy-align
xmap ga <Plug>(EasyAlign)

"for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline#extensions#tabline#fnamemode = ':t' " only print filename
let g:airline_highlighting_cache = 1
let g:airline_powerline_fonts = 1
let g:airline_section_u = ''
let g:airline_section_warning = ''  "do not use last status window
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
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = 'E'
let g:syntastic_warning_symbol = 'W'

let g:syntastic_verilog_checkers = ['iverilog']
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_c_compiler = "gcc"

"diminactive
let g:diminactive_enalbe_focus = 1

"snippets
let g:snipMate = { 'snippet_version' : 1 }

"NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
" <c-/> mapping to comment
nmap <c-_> <plug>NERDCommenterToggle        
vmap <c-_> <plug>NERDCommenterToggle<CR>gv
