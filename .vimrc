" --------------------Vundle------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" --------------------pathogen------------------------
execute pathogen#infect()
" Enable syntax highlighting
syntax on
filetype plugin indent on

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" --------------------system------------------------
"cd ~/.vim/bundle && git clone https://github.com/rking/ag.vim
set runtimepath^=~/.vim/bundle/ag
let g:ackprg = 'ag --nogroup --nocolor --column'
"cd ~/.vim/bundle && git clone git://github.com/altercation/vim-colors-solarized.git
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

set backupcopy=yes
set guifont=Monaco:h24
" Enable line numbers
set number
set nowrap
set langmenu=none
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Set file encodings order
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=2
" Make tabs as wide as two spaces
set tabstop=2
set autoindent
set history=50
" Highlight searches
set hlsearch
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set lazyredraw
" Optimize for fast terminal connections
set ttyfast

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:NERDTreeWinSize = 25

let mapleader = ","
map <Leader>t :NERDTree<CR>
map <C-E> :MRU<CR>
map <Leader>a :YRShow<CR>
" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Automatic commands
if has("autocmd")
" Automatically removing all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
endif
