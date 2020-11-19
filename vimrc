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
 if empty (glob ('~/.vim/autoload/plug.vim'))
     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
 endif
 
 
 call plug#begin('~/.vim/plugged')
 Plug 'davidhalter/jedi-vim'
 Plug 'morhetz/gruvbox'
 call plug#end()


 colorscheme gruvbox
 set background=dark

 if executable('rg')
     let g:rg_drive_root='true'
endif


