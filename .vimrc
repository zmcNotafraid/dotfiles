" --------------------vim-plug------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'rust-lang/rust.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'chemzqm/wxapp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mustache/vim-mustache-handlebars'
call plug#end()
" --------------------system------------------------
"  automatic open tree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Ag
let g:ackprg = 'ag --nogroup --nocolor --column'
syntax enable

" Color
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
map <Leader>c :call RunCurrentSpecFile()<CR>
" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Automatic commands
if has("autocmd")
" Automatically removing all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
endif
