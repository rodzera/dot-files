call plug#begin("~/.vim/plugged")
    " Theme
    Plug 'dracula/vim'
    Plug 'joshdick/onedark.vim'

    " 
    Plug 'sheerun/vim-polyglot'

call plug#end()"Config Section

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme dracula
