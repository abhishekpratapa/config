set nocompatible
source $VIMRUNTIME/vimrc_example.vim

set t_Co=256
set bg=dark
colorscheme graphlab

set tabpagemax=100
set guifont=Source\ Code\ Pro\ Medium\ 12
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set guifont=Source\ Code\ Pro\ Light:h14
  endif
endif

set nobackup
set nowritebackup
set noswapfile
set noundofile

filetype off                  " required! for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Jinja'
Plugin 'godlygeek/csapprox'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on     " required! for vundle

" set file extensions
au BufRead,BufNewFile *.jinja2 set filetype=jinja
au BufRead,BufNewFile *.less set filetype=css

" set spacing options (overrides filetypes above)
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase

" vim-gitgutter options
set number
let g:gitgutter_sign_column_always = 1