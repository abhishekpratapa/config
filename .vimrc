set nocompatible
source $VIMRUNTIME/vimrc_example.vim

set tabpagemax=100
set guifont=Source\ Code\ Pro\ Medium\ 10
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
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()
filetype plugin indent on     " required! for vundle

syntax enable
set background=dark

" set file extensions
au BufRead,BufNewFile *.jinja2 set filetype=jinja
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.simplex set filetype=lisp

" set spacing options (overrides filetypes above)
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase

" vim-gitgutter options
set number

" vim-autoformat options
noremap <F3> :Autoformat<CR>
let $PYTHONIOENCODING  = "UTF-8"

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
