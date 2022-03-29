call plug#begin("~/.vim/plugged")
    Plug 'sheerun/vim-polyglot'
    Plug 'sonph/onehalf'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'kyoz/purify'
call plug#end()"Config Section

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable

" Cursor
set guicursor=
