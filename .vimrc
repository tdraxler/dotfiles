filetype plugin indent on
" show existing tab with 4 spaces width - now 2
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces - now 2
set expandtab


" Thomas settings

" Show partial command in status line
set showcmd

" Avoid messing with indentation when pasting
" set paste

" No need to stay compatible with vi
set nocompatible

" Plug plugins
call plug#begin('~/.vim/plugged')

" Color schemes"
Plug 'ghifarit53/tokyonight-vim'
Plug 'sjl/badwolf'

Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'psliwka/vim-smoothie'
call plug#end()

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" let g:sonokai_disable_italic_comment = 1
let g:airline#extensions#branch#enabled = 1
" Syntax highlighting
syntax on

" Language aware completing
filetype plugin indent on

" Show line numbers
set number

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Encoding
set encoding=utf-8

" Set status line display
let g:airline_powerline_fonts = 1  " Fancy airline symbols
let g:airline_theme = "tokyonight"
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Make comments italic
" set t_ZH=^[[3m
" set t_ZR=^[[23m
" highlight Comment cterm=italic gui=italic

" Show cursor position
set ruler


" Search into subfolders. Good for tab-completion
set path+=**

" Display matching files when we tab complete
set wildmenu
" You can use ':b <filename>' to switch to another file
" Use :find <filenamepart> to find a file to switch to

" Don't bother looking for files in node_modules
set wildignore=*/node_modules/*,*/.git/*

" Creates `tags` file. You'll need ctags for this
command! MakeTags !ctags -R .
