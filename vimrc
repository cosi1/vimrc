" Niepotrzebne, jeżeli jest vim-plug:
" syntax on
" packloadall
" filetype plugin on
" filetype indent on

call plug#begin()
Plug 'zah/nim.vim'
Plug 'skrzyp/vim-mads'
call plug#end()

set ruler
set ignorecase smartcase incsearch
set nofixeol

autocmd FileType pascal set autoindent expandtab shiftwidth=4 softtabstop=4
autocmd FileType go set tabstop=4

autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("echo $SHELL | sed 's|.*/||' | xargs tmux rename-window")

set background=dark
colorscheme jellybeans

nnoremap j gj
nnoremap k gk

