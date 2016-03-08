" Sacral stuff
set nocompatible
syntax on
filetype plugin on
filetype indent on
filetype off

" Vundle and custom paths inclusion
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/personal
set rtp+=~/.vim/conque/
call vundle#rc()

" Tools of common awesomeness
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter'
Bundle 'ayang/AutoComplPop'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'skammer/vim-css-color'
Bundle 'snipMate'
Bundle 'tComment'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'bilalq/lite-dfm'

" Ruby goodies
Bundle 'vim-ruby/vim-ruby'

" JavaScript goodies
Bundle 'jelera/vim-javascript-syntax'

" Haskell goodies
Bundle 'dag/vim2hs'
Bundle 'haskell.vim'
Bundle 'hspec/hspec.vim'
Bundle 'wlangstroth/vim-haskell'

" Golang goodies
Bundle 'jnwhiteh/vim-golang'
Bundle 'fsouza/go.vim'

" Look and feel
colorscheme mustang
set guifont=Monaco:h10
set linespace=4
set guioptions='e'
set guitablabel=%t
set nonumber
set wrap!

" Change working directory to file's one
set autochdir

" left margin for code aesthetics
set foldcolumn=1

" PowerLine plugin dependence
set laststatus=2

" Indentation
set autoindent

" Auto indent after a {
set smartindent

" Wildmenu
set wildmenu

set backspace=indent,eol,start
set clipboard=unnamed

" Automatically reload changed files
set autoread

" Turn TAB-work to a normal mode
set smarttab
set expandtab

" Do not unload buffer when switching to another one
set hidden

" Enable mouse
set mouse=a
set mousemodel=popup

" Hide the mouse when typing text
set mousehide

" Disabling tmp files creation
set nobackup
set noswapfile

" Default tab width
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Default encoding
set termencoding=utf-8
set fileencodings=utf-8,cp1251,cp866,koi8-ri

" Bell
set novisualbell
set visualbell t_vb=

" Show tabs and trailing spaces
set listchars=tab:>-,trail:-
set list

" Ctags hint
" READ: https://github.com/majutsushi/tagbar/wiki
set tags=tags

" Better search options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set showmatch
set hlsearch
set iminsert=0
set imsearch=0
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Make ; do same things as :
nnoremap ; :

" vim-gitgutter view impreved
highlight clear SignColumn

" Enabling syntastic
let g:syntastic_enable_signs=1

" Remapping Conque toggle key
let g:ConqueTerm_ToggleKey = '<F10>'

" Enabling auto-popup for SnipMate sugestions
let g:acp_behaviorSnipmateLength=1

" Setting undo-options
if version >= 700
  set undodir=~/.vim/undodir/
  set undofile
  set undolevels=1000
  set undoreload=5000
endif

" Settings for git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72

" Turning OFF Replace mode
imap <Ins> <Esc>wq

" Rebinding for ZenCoding
let g:user_zen_expondabbr_key = '<D-e>'

highlight lCursor guifg=NONE guibg=Red

" associating .go files with Go syntax
au BufNewFile,BufRead *.go setf go

filetype plugin indent on
