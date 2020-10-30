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


 set colorcolumn=80

 call plug#begin('~/.vim/plugged')

 Plug 'morhetz/gruvbox'
 Plug 'jremmen/vim-ripgrep'
 Plug 'tpope/vim-fugitive'
 Plug 'leafgarland/typescript-vim'
 Plug 'vim-utils/vim-man'
 Plug 'lyuts/vim-rtags'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'valloric/youcompleteme'
 Plug 'mbbill/undotree'
 Plug 'rust-lang/rust.vim'
 Plug 'fatih/vim-go'
 Plug 'octol/vim-cpp-enhanced-highlight'
 Plug 'sheerun/vim-polyglot'
 Plug 'pangloss/vim-javascript' 
 call plug#end()


 colorscheme gruvbox
 set background=dark

 if executable('rg')
     let g:rg_drive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize=25

let g:ctrlp_use_caching=0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :Undotreeshow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5 <CR>
nnoremap <silent> <leader>- :vertical resize -5 <CR>

nnoremap <silent> <leader>gd :YcmCompleter Goto<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
