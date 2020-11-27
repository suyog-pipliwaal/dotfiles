 syntax on

 set noerrorbells
 set tabstop=4 softtabstop=4
 set shiftwidth=4
 set expandtab
 set smartindent 
 set nu
 set nowrap
 set smartcase
 set noswapfile
 set nobackup
 set undodir=~/.vim/undodir
 set undofile
 set incsearch
 set hlsearch
 call plug#begin('~/.vim/plugged')
 Plug 'davidhalter/jedi-vim'
 Plug 'morhetz/gruvbox'
 Plug 'pangloss/vim-javascript'
 call plug#end()


 colorscheme gruvbox
 set background=dark

 if executable('rg')
     let g:rg_drive_root='true'
endif


let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


