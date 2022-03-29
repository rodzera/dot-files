" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Automatically wrap text that extends beyond the screen length.
set wrap

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

set termguicolors

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif


" THEME 
 
" TOKYONIGHT
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight

" ONEHALF
"set t_Co=256
"set cursorline
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

" PURIFY
colorscheme purify

