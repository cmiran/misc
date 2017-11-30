set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nu " lines numbers
filetype plugin indent on
syntax on " colors !
set mouse=a " allow to use the mouse
runtime! config/**/*.vim
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set backspace=indent,eol,start " make backspace work like most other programs
set noerrorbells " don't make noise
set clipboard=unnamedplus " share clipboard
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd Filetype c setlocal shiftwidth=2 tabstop=2 " set hard tab in C files
ino ( ()<left>
ino { {}<left>
set ruler
highlight EW ctermbg=darkgreen guibg=lightgreen
match EW /  \+$/
