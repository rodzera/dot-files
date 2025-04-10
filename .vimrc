" set compatibility to vim only
set nocompatible

" helps force plug-ins to load correctly when it is turned back on below
filetype off

" turn on syntax highlighting
syntax on

" for plug-ins to load correctly
filetype plugin indent on

" set shift width to 4 spaces
set shiftwidth=4

" set tab width to 4 columns
set tabstop=4

" use space characters instead of tabs
set expandtab

" automatically wrap text that extends beyond the screen length
set wrap

" add numbers to each line on the left-hand side
set number

" show partial command you type in the last line of the screen
set showcmd

" show the mode you are on the last line
set showmode

" show matching words during a search
set showmatch

" status bar
set laststatus=2
set termguicolors

" eol
set eol
set fixeol

" clipboard support
set clipboard=unnamedplus

" call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" themes
colorscheme purify
" colorscheme onedark

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

