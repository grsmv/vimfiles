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
Bundle 'LanguageTool'
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'snipMate'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/taglist.vim'
Bundle 'AutoComplPop'

" Ruby goodies
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'skwp/vim-ruby-conque'
Bundle 'tpope/vim-rails'
Bundle 'skwp/vim-spec-finder'

" JavaScript goodies
Bundle 'mklabs/vim-backbone'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jelera/vim-javascript-syntax'

" Lisp goodies
Bundle 'vim-scripts/slimv.vim'
Bundle 'vim-scripts/VimClojure'

" Haskell goodies
Bundle 'Shougo/vimproc.vim'
Bundle 'bitc/lushtags'
Bundle 'dag/vim2hs'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'haskell.vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'wlangstroth/vim-haskell'

" Golang goodies
Bundle 'jnwhiteh/vim-golang'
Bundle 'fsouza/go.vim'

" Look and feel
colorscheme mustang
set guifont=Monaco:h12
set linespace=4
set guioptions='e'
set guitablabel=%t
set nonumber
set wrap!

" left margin for code aesthetics
set foldcolumn=1

" PowerLine plugin dependence
set laststatus=2

" Indentation
set autoindent

" Auto indent after a {
set smartindent

" Wildmenu
" set wildmode=longest,list,full
set wildmenu

set backspace=indent,eol,start
set clipboard=unnamed

" Turn TAB-work to a normal mode
set smarttab
set expandtab

" Do not unload buffer when switching to another one
set hidden

" Search mode helpers
set hlsearch
set iminsert=0
set imsearch=0

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

" vim-gitgutter view impreved
highlight clear SignColumn

" Enabling syntastic
let g:syntastic_enable_signs=1

" Remapping Conque toggle key
let g:ConqueTerm_ToggleKey = '<F10>'

" Setting undo-options
if version >= 700
  set undodir=~/.vim/undodir/
  set undofile
  set undolevels=1000
  set undoreload=5000
endif

" Enabling paredit for not only for Lisp
au BufNewFile,BufRead *.lisp call PareditInitBuffer()

" Settings for git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72


" Clojure-related settings
" ------------------------
" Automatically determine indenting using fuzzy matching. e.g. the a line 
" starting "(with-" will be indented two spaces.
let vimclojure#FuzzyIndent=1

" Highlight built-in functions from clojure.core and friends
let vimclojure#HighlightBuiltins=1

" Highlight functions from contrib
let vimclojure#HighlightContrib=1

" As new symbols are identified using VimClojure's dynamic features, 
" automatically highlight them.
let vimclojure#DynamicHighlighting=1

" Color parens so they're easier to match visually
let vimclojure#ParenRainbow=1

" Yes, I want nailgun support
let vimclojure#WantNailgun = 1

" Full path to the nailgun client
let vimclojure#NailgunClient = "/Users/sergey/bin/ng"

" LangugeTool integration
let g:languagetool_jar='/Users/sergey/Library/LanguageTool/languagetool-commandline.jar'

" Ruby-related settings
" ---------------------

" Ruby code completion
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading=1
" autocmd FileType ruby,eruby let g:rubycomplete_rails=1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1


" Folding
" set foldenable
" set foldmethod=syntax
" set foldcolumn=6

" Russian language support  
"set keymap=russian-jcukenwin

" Turning OFF Replace mode
imap <Ins> <Esc>wq

" Rebinding for ZenCoding
let g:user_zen_expondabbr_key = '<D-e>'

highlight lCursor guifg=NONE guibg=Red

" More suitable mapping
function SMap(key, action, ...)
    let modes = " vi"
    if (a:0 > 0)
        let modes = a:{1}
    endif
    if (match(modes, '\Ii') != -1)
        execute 'imap ' . a:key . ' <Esc>' . a:action
    endif
    if (match(modes, '\Nn') != -1)
        execute 'nmap ' . a:key . ' <Esc>' . a:action
    endif
    if (match(modes, ' ') != -1)
        execute 'map ' . a:key . ' <Esc>' . a:action
    endif
    if (match(modes, '\Vv') != -1)
        execute 'vmap ' . a:key . ' <Esc>' . a:action
    endif
endfunction

" Quick save
call SMap("<F2>", ":w<cr>")

" NerdTree toggle
call SMap("<F3>", ":NERDTreeToggle<cr>")

" JSLint checking
call SMap("<F4>", ":w<CR>:make<CR>:cw<CR>")

" Show buffers
call SMap("<F5>", ":ls<cr>:b")

" Prev buffer
call SMap("<F6>", ":bp<cr>")

" Next buffer
call SMap("<F7>", ":bn<cr>")

" Tagbar  toggle
call SMap("<F8>", ":TagbarToggle<cr>")

" Gundo toggle
call SMap("<F9>", ":GundoToggle<cr>")

" C-T - new tab
call SMap("<C-t>", ":tabnew<cr>")

" Ctrl + tab - next tab
call SMap("<S-tab>", ":tabnext<cr>")

" associating .go files with Go syntax
au BufNewFile,BufRead *.go setf go

" FuzzyFinder setup
function IdeFindTextMate()
  let g:FuzzyFinderOptions.Base.key_open = '<CR>'
  let g:FuzzyFinderOptions.Base.key_open_split = '<C-j>'
  exe "FuzzyFinderTextMate"
endfunction

function IdeSplitFindTextMate()
  let g:FuzzyFinderOptions.Base.key_open = '<C-j>'
  let g:FuzzyFinderOptions.Base.key_open_split = '<CR>'
  exe "FuzzyFinderTextMate"
endfunction

let mapleader = ","
map <silent> <leader>e :call IdeFindTextMate()<CR>
map <silent> <leader>s :call IdeSplitFindTextMate()<CR>

" TagBar settings for Golang
let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [
    \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
  \ ],
  \ 'sro' : '.',
  \ 'kind2scope' : {
    \ 't' : 'ctype',
    \ 'n' : 'ntype'
  \ },
  \ 'scope2kind' : {
    \ 'ctype' : 't',
    \ 'ntype' : 'n'
  \ },
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
\ }

" TagBar support for CoffeeScript
if executable('coffeetags')
  let g:tagbar_type_coffee = {
    \ 'ctagsbin' : 'coffeetags',
    \ 'ctagsargs' : '',
    \ 'kinds' : [
    \ 'f:functions',
    \ 'o:object',
    \ ],
    \ 'sro' : ".",
    \ 'kind2scope' : {
    \ 'f' : 'object',
    \ 'o' : 'object',
    \ }
  \ }
endif

" TagBar support for Javascript
" let g:tagbar_type_javascript = {
"     \ 'ctagsbin' : '/usr/local/bin/jsctags'
" \ }

filetype plugin indent on
