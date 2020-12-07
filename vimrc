" general vim features toggle
set hlsearch

" for vim 7
set t_Co=256
" Theme
syntax on

set background=dark

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme base16-gruvbox-dark-hard
"self explanatory
highlight Comment cterm=italic
highlight Todo cterm=bold,italic
"if, else etc
highlight Conditional cterm=italic
highlight Keyword cterm=italic
highlight Character cterm=italic
"return, let, const etc
highlight Statement cterm=italic,bold
highlight Identifier cterm=italic,bold
"console, function args etc
highlight Special cterm=italic,bold


" tabbing and indentation
set tabstop=4
set shiftwidth=4

" For Vundle and plugin management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'dNitro/vim-pug-complete'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'KKPMW/moonshine-vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'groenewege/vim-less'
Plugin 'davidhalter/jedi-vim'
Plugin 'rust-lang/rust.vim'
"jsx linting
Plugin 'mxw/vim-jsx'

Plugin 'w0rp/ale'

"Prettier setup
Plugin 'sbdchd/neoformat'

call vundle#end() " required
filetype plugin indent on " required

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = { 'javascript.jsx' : { 'extends' : 'jsx', }, }

"Prettier configuration
let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
let g:neoformat_run_all_formatters = 1

"Run prettier automatically on save
au BufWritePre *.js,*.ts,*.scss,*.rb Neoformat

set completeopt-=preview
