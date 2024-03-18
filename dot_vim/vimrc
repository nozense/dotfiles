set nocompatible 	" Disable compatibility with vi which can cause unexpected issues.
filetype on 		" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype plugin on 	" Enable plugins and load plugin for the detected file type.
filetype indent on 	" Load an indent file for the detected file type.
syntax enable 		" Turn syntax highlighting on (change 'enable' to 'on' for vim default colors).
set number 		" Add numbers to each line on the left-hand side.
set cursorline 		" Highlight cursor line underneath the cursor horizontally.
" set cursorcolumn 	" Highlight cursor line underneath the cursor vertically.
set hlsearch 		" Highlights search terms"
set incsearch 		" Highlights search terms as you type them"
set showmatch 		" Highlights matching parentheses"
set ignorecase 		" Ignores case when searching"
set smartcase 		" Unless you put some caps in your search term"
set autoindent 		" autoindent
set textwidth=80 	" max width 80 char 
set encoding=utf8 	" Set utf8 as standard encoding
set guioptions-=m  	" No menu bar
set guioptions-=T  	" No toolbar
set guioptions-=r  	" No scrollbar

" Make a home dir!
if has('win32') || has ('win64')
    let $VIMHOME = $VIM."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif
" Define localrc!
let $LOCALRC = $VIMHOME."/local.vimrc"
" include (source) local rc!
silent! so $LOCALRC

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'easymotion/vim-easymotion'
call plug#end()

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

let g:airline_theme='dracula'
colorscheme dracula



