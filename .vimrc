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
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'arcticicestudio/nord-vim'
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
set signcolumn=yes

" vim-autoformat options
noremap <F3> :Autoformat<CR>
let $PYTHONIOENCODING  = "UTF-8"

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" remap Cmd+p to fzf
aunmenu File.Print
map <D-p> :Files<CR>

" show lightline as status line
set laststatus=2

colorscheme nord
